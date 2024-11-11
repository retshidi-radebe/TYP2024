using FarmacyAPI.Models;
using Newtonsoft.Json;
using System.Text;

namespace MauiApp2;

public partial class FeedQs : ContentPage
{

    private static readonly HttpClient client = new HttpClient();
    private static int count;
    private static string userID;
    public FeedQs(List<int> animals, string userId)
    {
        InitializeComponent();
        userID = userId;
        count = 0;
        animalsQues(animals);
    }

    public FeedQs(int animalId, string userId)
    {
        InitializeComponent();
        userID = userId;
        animalQues(animalId);
    }

    private void animalsQues(List<int> animals)
    {
        ques.Clear();
        foreach (var animal in animals)
        {
            count++;
            var lbl = new Label()
            {
                Text = "Is animal " + animal + " showing a lack of appetite?",
                FontAttributes = FontAttributes.Bold,
                FontSize = 18
            };

            var dd = new Picker()
            {
                Title = "Choose option",
                ItemsSource = new List<string>() { "Yes", "No" },
                BindingContext = animal,
                HorizontalOptions = LayoutOptions.FillAndExpand,
                WidthRequest = 250,
                HeightRequest = 40,
                Margin = new Thickness(0, 0, 20, 10)
            };
            var frame = new Frame
            {
                Content = dd,
                CornerRadius = 45,
                Margin = new Thickness(0, 10, 0, 10)
            };
            ques.Add(lbl);
            dd.SelectedIndexChanged += selectedChoice;
            ques.Add(frame);
        }
        var button = new Button()
        {
            Text = "Submit",
            BackgroundColor = Colors.Black,
            CornerRadius = 25
        };
        button.Clicked += feedQue;
        ques.Add(button);
    }
    private void animalQues(int animalId)
    {
        ques.Clear();

        var lbl = new Label()
        {
            Text = "Is animal " + animalId + " showing a lack of appetite?",
            FontAttributes = FontAttributes.Bold,
            FontSize = 18,
            Margin = new Thickness(0, 20, 20, 10),
        };
        var dd = new Picker()
        {
            Title = "Choose option",
            HorizontalOptions = LayoutOptions.FillAndExpand,
            WidthRequest = 250,
            HeightRequest = 40,
            Margin = new Thickness(0, 0, 20, 10),
            ItemsSource = new List<string>() { "Yes", "No" },
            BindingContext = animalId,
        };
        var frame = new Frame
        {
            Content = dd,
            CornerRadius = 45,
            Margin = new Thickness(0, 20, 0, 10)
        };
        var button = new Button()
        {
            Text = "Submit",
            BackgroundColor = Colors.Black,
            CornerRadius = 25
        };
        button.Clicked += feedQue;
        ques.Add(lbl);
        dd.SelectedIndexChanged += selectedChoice;
        ques.Add(frame);
        ques.Add(button);

    }

    private async void feedQue(object? sender, EventArgs e)
    {
        selectedChoice(sender, e);
        if (count > 0)
        {
            await DisplayAlert("Alert", "Task done", "OK");
            await Navigation.PushAsync(new DashboardPage(userID));
        }

    }

    private void selectedChoice(object? sender, EventArgs e)
    {
        var pick = sender as Picker;
        if (pick != null)
        {
            updateAppetite((int)pick.BindingContext, pick.Items[pick.SelectedIndex]);
        }
    }

    private async void updateAppetite(int id, string choice)
    {
        try
        {
            string respbody = await getCows(id);
            var cows = JsonConvert.DeserializeObject<FarmacyAPI.Models.Animal>(respbody);

            if (cows != null)
            {
                if (choice.ToLower().Equals("no"))
                {
                    var updateAnimal = new
                    {
                        Id = cows.Id,
                        Species = cows.Species,
                        Gender = cows.Gender,
                        HealthStatus = cows.HealthStatus,
                        Breed = cows.Breed,
                        colour = cows.Colour,
                        A_Weight = cows.A_Weight,
                        Height = cows.Height,
                        DateAcquired = cows.DateAcquired,
                        Age = cows.Age,
                        Kraal = cows.Kraal,
                        AppetiteStatus = "Normal",
                    };
                    updateThis(updateAnimal);
                }
                else if (choice.ToLower().Equals("yes"))
                {
                    var updateAnimal = new
                    {
                        Id = cows.Id,
                        Species = cows.Species,
                        Gender = cows.Gender,
                        HealthStatus = cows.HealthStatus,
                        Breed = cows.Breed,
                        colour = cows.Colour,
                        A_Weight = cows.A_Weight,
                        Height = cows.Height,
                        DateAcquired = cows.DateAcquired,
                        Age = cows.Age,
                        Kraal = cows.Kraal,
                        AppetiteStatus = "Low",
                    };
                    updateThis(updateAnimal);
                }
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "changing appetite: " + ex, "OK");
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
            await DisplayAlert("error here", "error is here", "OK");
            return null;
        }
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
}

