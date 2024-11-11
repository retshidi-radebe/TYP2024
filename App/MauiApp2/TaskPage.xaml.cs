using Azure;
using FarmacyAPI;
using FarmacyAPI.Controllers;
using FarmacyAPI.Models;
using MauiApp2.Repository;
using Newtonsoft.Json;
using System.Diagnostics;
using System.Globalization;
using System.ServiceModel;
using System.Text;

namespace MauiApp2;

public partial class TaskPage : ContentPage
{
    private readonly HttpClient client;
    public int counter = 0;
    private readonly string id;
    public string notification = "";
    public TaskPage(string Id)
    {
        InitializeComponent();
        id = Id;
        client = new HttpClient();
        TaskDisplay();

    }

    public TaskPage()
    {
        InitializeComponent();
        id = LoginPage.userN;
        client = new HttpClient();
        //TaskDisplay();

    }

    private async void TaskDisplay()
    {
        populate.Children.Clear();
        try
        {
            string url = "http://10.0.2.2:7041/api/Farmacy/GetAllocatedTasks";
            var request = new HttpRequestMessage(HttpMethod.Get, url);
            request.Headers.CacheControl = new System.Net.Http.Headers.CacheControlHeaderValue
            {
                NoCache = true,
                NoStore = true,
            };

            HttpResponseMessage response = await client.GetAsync(url);

            string responseBody = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                var result = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.TaskAllo>>(responseBody);
                if (result != null)
                {
                    var lbl = new Label
                    {
                        Text = "Today's Tasks",
                        HorizontalTextAlignment = TextAlignment.Center,
                        FontSize = 25,
                        FontAttributes = FontAttributes.Bold,
                    };
                    populate.Children.Add(lbl);
                    foreach (var t in result)
                    {
                        if (t.User_Id.Equals(id))
                        {
                            addButton(t, t.Id, t.Task_Id, t.Status);
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "" + ex, "OK");
        }
        //adding the med tasks
        getMedTasks();
    }

    public async void addButton(TaskAllo t, int id, int taskID, string taskStatus)
    {
        HttpResponseMessage responses = await AlloAsync(taskID);
        string responseBodys = await responses.Content.ReadAsStringAsync();

        if (responses.IsSuccessStatusCode)
        {
            try
            {
                var results = JsonConvert.DeserializeObject<FarmacyAPI.Models.Task>(responseBodys);

                if (results != null)
                {
                    if (taskStatus.ToLower().Equals("not started") || taskStatus.ToLower().Equals("in progress"))
                    {
                        if (results.Task_Name.ToLower().Equals("questionnaire"))
                        {
                            var button = new Button
                            {
                                Text = "Health Check",
                                FontSize = 16,
                                BackgroundColor = Colors.White,
                                CornerRadius = 15,
                                TextColor = Colors.Black,
                                FontAttributes = FontAttributes.Bold,

                                WidthRequest = 350,
                                HeightRequest = 70,
                                CommandParameter = new { TaskAllo = t, ID = id, Status = taskStatus, TaskName = results.Task_Name, Description = results.Description }
                            };
                            button.Clicked += taskDetails;
                            populate.Children.Add(button);
                        }
                        else
                        {
                            var button = new Button
                            {
                                Text = results.Task_Name,
                                FontSize = 16,
                                BackgroundColor = Colors.White,
                                CornerRadius = 15,
                                TextColor = Colors.Black,
                                FontAttributes = FontAttributes.Bold,

                                WidthRequest = 350,
                                HeightRequest = 90,
                                CommandParameter = new { TaskAllo = t, ID = id, Status = taskStatus, TaskName = results.Task_Name, Description = results.Description }
                            };
                            button.Clicked += taskDetails;
                            populate.Children.Add(button);
                        }
                    }
                    else if (taskStatus.ToLower().Equals("done"))
                    {

                    }
                }
            }
            catch (Exception e)
            {
                await DisplayAlert("checher", "exception response: " + e, "done");
            }

        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        TaskDisplay();
    }
    private async void taskDetails(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            var para = (dynamic)button.CommandParameter;
            await Navigation.PushAsync(new TaskDescription(para.TaskAllo, id, para.ID, para.Status, para.TaskName, para.Description));
        }
    }

    private async void getMedTasks()
    {
        try
        {
            string url = "http://10.0.2.2:7041/api/Farmacy/GetAllocatedMeds";
            HttpResponseMessage response = await client.GetAsync(url);

            string responseBody = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                var result = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.MedAllo>>(responseBody);
                if (result != null)
                {
                    foreach (var t in result)
                    {
                        if (t.User_Id.Equals(id))
                        {
                            addMedButton(t, t.Id, t.Med_Id, t.Status);
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "" + ex, "OK");
        }
    }

    private async void addMedButton(MedAllo t, int id, int medID, string taskStatus)
    {
        HttpResponseMessage responses = await MedAsync(medID);
        string responseBodys = await responses.Content.ReadAsStringAsync();

        if (responses.IsSuccessStatusCode)
        {
            try
            {
                var results = JsonConvert.DeserializeObject<FarmacyAPI.Models.Medication>(responseBodys);

                if (results != null)
                {
                    if (taskStatus.ToLower().Equals("not started") || taskStatus.ToLower().Equals("in progress"))
                    {
                        var button = new Button
                        {
                            Text = "Medication",
                            BackgroundColor = Colors.Black,
                            CommandParameter = new { MedAllo = t, ID = id, Status = taskStatus, TaskName = "Medication", Description = "Give the " + results.Name + " to animal/s " + t.AnimalId }
                        };
                        button.Clicked += MedTaskDetails;
                        populate.Children.Add(button);
                    }
                    else if (taskStatus.ToLower().Equals("done"))
                    {

                    }
                }
            }
            catch (Exception e)
            {
                await DisplayAlert("checher", "exception response: " + e, "done");
            }

        }
    }

    private async void MedTaskDetails(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            var para = (dynamic)button.CommandParameter;
            await Navigation.PushAsync(new TaskDescription(para.MedAllo, id, para.ID, para.Status, para.TaskName, para.Description));
        }
    }

    private async Task<HttpResponseMessage> AlloAsync(int user)
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetAllocatedTask?id={user}";
        var json = JsonConvert.SerializeObject(user);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.GetAsync(url);
    }

    private async Task<HttpResponseMessage> MedAsync(int med)
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetAllocatedMed?id={med}";
        var json = JsonConvert.SerializeObject(med);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.GetAsync(url);
    }

}