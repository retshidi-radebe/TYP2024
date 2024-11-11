
using Azure;
using FarmacyAPI.Data;
using FarmacyAPI.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Maui.ApplicationModel.Communication;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Xml.Linq;

namespace MauiApp2;

public partial class Questionaire : ContentPage
{
    private static readonly HttpClient client = new HttpClient();
    private  readonly ApplicationDbContext _context;
    private readonly string id;
    private readonly int aId;
    public TaskPage taskP;

    public Questionaire(string id)
	{
        this.id = id;
        taskP = new TaskPage(id);
		InitializeComponent();
        chosen();

	}

    public Questionaire()
    {
        this.id = LoginPage.userN;
        taskP = new TaskPage(id);
        InitializeComponent();
        chosen();

    }

    public Questionaire(string id, int animalId)
    {
        this.id = id;
        aId = animalId;
        InitializeComponent();
        chosen();
        taskP = new TaskPage(id);
    }

    public async void chosen()
    {
        //retrieving datat from the datatbase
       

        Questionaire1.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire2.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire3.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire4.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire5.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire6.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire7.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire8.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire9.ItemsSource = new List<string> { "Yes", "No" };
        Questionaire10.ItemsSource = new List<string> { "Yes", "No" };

        Questionaire1.SelectedItem = "Yes";
        Questionaire2.SelectedItem = "Yes";
        Questionaire3.SelectedItem = "Yes";
        Questionaire4.SelectedItem = "Yes";
        Questionaire5.SelectedItem = "Yes";
        Questionaire6.SelectedItem = "Yes";
        Questionaire7.SelectedItem = "Yes";
        Questionaire8.SelectedItem = "Yes";
        Questionaire9.SelectedItem = "Yes";
        Questionaire10.SelectedItem = "Yes";

        AnimalID.Text = ""+aId;
    }

    public async Task<List<int>> getCows()
    {
        return  await _context.Animals.Select(e => e.Id).ToListAsync();
    }

    public int checkup(string question)
    {
        if(question.Equals("Yes"))
        {
            return 1;
        }
        else if(question.Equals("No"))
        {
            return 0;
        }
        return -1;
    }
    protected async void NewQuest(object sender, EventArgs e)
    {

        DateTime date = DateTime.Now;
        try
        {
            var quest = new
            {
                DateAquired = date,
                Q_One = checkup(Questionaire1.SelectedItem as string),
                Q_Two = checkup(Questionaire2.SelectedItem as string),
                Q_Three = checkup(Questionaire3.SelectedItem as string),
                Q_Four = checkup(Questionaire4.SelectedItem as string),
                Q_Five = checkup(Questionaire5.SelectedItem as string),
                Q_Six = checkup(Questionaire6.SelectedItem as string),
                Q_Seven = checkup(Questionaire7.SelectedItem as string),
                Q_Eight = checkup(Questionaire8.SelectedItem as string),
                Q_Nine = checkup(Questionaire9.SelectedItem as string),
                Q_Ten = checkup(Questionaire10.SelectedItem as string),
                U_ID = id,
                Cid = int.Parse(AnimalID.Text),
            };

            var response = await QuestAsync(quest);

            if (response.IsSuccessStatusCode)
            {
                var tot = quest.Q_One+ quest.Q_Two+quest.Q_Three+quest.Q_Four+quest.Q_Five+quest.Q_Six+quest.Q_Seven+quest.Q_Eight+quest.Q_Nine+quest.Q_Ten;
                if(tot>=5)
                {
                    await DisplayAlert("Success", "Questionaire submitted\n"+ "Animal tag: " + await getCowName(quest.Cid) + "\nHealth status: High Risk", "OK");
                    string respbody = await getCows(quest.Cid);
                    var cows = JsonConvert.DeserializeObject<FarmacyAPI.Models.Animal>(respbody);

                    if (cows != null)
                    {
                            var updateAnimal = new
                            {
                                Id = quest.Cid,
                                Name = cows.Name,
                                Species = cows.Species,
                                Gender = cows.Gender,
                                HealthStatus = "HighRisk",
                                Breed = cows.Breed,
                                colour = cows.Colour,
                                A_Weight = cows.A_Weight,
                                Height = cows.Height,
                                DateAcquired = cows.DateAcquired,
                                Age = cows.Age,
                                Kraal = 5,
                                AppetiteStatus = cows.AppetiteStatus,
                                New_Weight = cows.New_Weight,

                            };
                        updateThis(updateAnimal);

                        getCowsInKraal(updateAnimal.Id,cows.Kraal);
                        if(cows.Kraal!=5)
                        {
                            allocateTask(id, "" + quest.Cid);
                            taskP.notification += "Animal " + quest.Cid + " is at high risk of having FMD and will be moved to kraal 5 (quarantine kraal) \n";
                        }
                        
                    }


                }
                else if (tot <3)
                {
                    await DisplayAlert("Success", "Questionaire submitted\n" + "Animal tag: " + await getCowName(quest.Cid) + "\nHealth status: Healthy", "OK");
                    string respbody = await getCows(aId);
                    var cows = JsonConvert.DeserializeObject<FarmacyAPI.Models.Animal>(respbody);

                    if (cows != null)
                    {
                        var updateAnimal = new
                        {
                            
                            Id = quest.Cid,
                            Name = cows.Name,
                            Species = cows.Species,
                            Gender = cows.Gender,
                            HealthStatus = "Healthy",
                            Breed = cows.Breed,
                            colour = cows.Colour,
                            A_Weight = cows.A_Weight,
                            Height = cows.Height,
                            DateAcquired = cows.DateAcquired,
                            Age = cows.Age,
                            Kraal = cows.Kraal,
                            AppetiteStatus = cows.AppetiteStatus,
                            New_Weight= cows.New_Weight,
                        };
                        updateThis(updateAnimal);
                    }

                }
            }
            else
            {
                await DisplayAlert("error", "Something went wrong "+quest.DateAquired, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "login failed " + ex, "OK");
        }
    }


    private async Task<string> getCowName(int cid)
    {
        HttpResponseMessage respon = await AnimalAsync(cid);
        string responseBodys = await respon.Content.ReadAsStringAsync();
        if (respon.IsSuccessStatusCode)
        {
            var cows = JsonConvert.DeserializeObject<FarmacyAPI.Models.Animal>(responseBodys);
            return cows.Name;

        }
        else
        {
            return null;
        }
    }
    private async void updateThis(object updateAnimal)
    {

        try
        {
            HttpResponseMessage response = await UpdateAsync(updateAnimal);


            if (response.IsSuccessStatusCode)
            {

            }
            else
            {
                // Invalid credentials
                await DisplayAlert("error", "Down" + response, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "updateThis part: " + ex, "OK");
        }
    }

    private async Task<string> getCows(int cid)
    {
        HttpResponseMessage respon = await AnimalAsync(cid);
        string responseBodys = await respon.Content.ReadAsStringAsync();
        if (respon.IsSuccessStatusCode)
        {
            return responseBodys;
        }
        else
        {
            await DisplayAlert("error here","error is here","OK");
            return null;
        }
    }

    private async void getCowsInKraal(int id, int kraal)
    {
        HttpResponseMessage respon = await AnimalsAsync();
        string responseBodys = await respon.Content.ReadAsStringAsync();
        if (respon.IsSuccessStatusCode)
        {
            var cows = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.Animal>>(responseBodys);
           if(cows!=null)
            {
                foreach (var c in cows)
                {
                    if (c.Kraal == kraal && c.Id!=id && c.Kraal!=5)
                    {
                        var updateAnimal = new
                        {
                            Id = c.Id,
                            Name = c.Name,
                            Species = c.Species,
                            Gender = c.Gender,
                            HealthStatus = "Exposed",
                            Breed = c.Breed,
                            colour = c.Colour,
                            A_Weight = c.A_Weight,
                            Height = c.Height,
                            DateAcquired = c.DateAcquired,
                            Age = c.Age,
                            Kraal = c.Kraal,
                            AppetiteStatus = c.AppetiteStatus,
                            New_Weight = c.New_Weight,

                        };
                        updateThis(updateAnimal);
                    }
                }
            }
        }
        else
        {
            await DisplayAlert("error here", "error is here", "OK");
        }
    }

    private async void allocateTask(string id, string animalID)
    {
        DateTime date = DateTime.Now;
        try
        {
            var allo = new
            {
                Task_Id = 8,
                User_Id = id,
                Status = "Not Started",
                DueDate = date,
                AnimalID = animalID,
            };

            var response = await TaskAlloAsync(allo);

            if (response.IsSuccessStatusCode)
            {

            }
            else
            {
                await DisplayAlert("error", "Something went wrong: " + allo, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error on submit", "" + ex, "OK");
        }
    }
    private async Task<HttpResponseMessage> QuestAsync(object quest)
    {
        var json = JsonConvert.SerializeObject(quest);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PostAsync("http://10.0.2.2:7041/api/Farmacy/questionaire", content);
    }
    private async Task<HttpResponseMessage> UpdateAsync(object animal)
    {
        var json = JsonConvert.SerializeObject(animal);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PutAsync("http://10.0.2.2:7041/api/Farmacy/updateAnimalHealthyStatus", content);
    }

    private async Task<HttpResponseMessage> AnimalAsync(int animalID)

    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetsAnimal?id={animalID}";
        var json = JsonConvert.SerializeObject(animalID);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.GetAsync(url);
    }

    private async Task<HttpResponseMessage> AnimalsAsync()
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetAnimals";
        return await client.GetAsync(url);
    }

    private async Task<HttpResponseMessage> TaskAlloAsync(object Allotask)
    {
        var json = JsonConvert.SerializeObject(Allotask);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PostAsync("http://10.0.2.2:7041/api/Farmacy/AllocateTask", content);
    }

}
