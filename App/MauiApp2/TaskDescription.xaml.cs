using FarmacyAPI.Models;
using Microsoft.VisualBasic;
using Newtonsoft.Json;
using System.Collections;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Maui;
namespace MauiApp2;

public partial class TaskDescription : ContentPage
{
    private readonly HttpClient client;
    public static TaskAllo taskAllo;
    public static MedAllo medAllo;
    private readonly string userID;
    private TaskPage taskPage;
    private Button btn1;
    private int numQs;
    private int num = 0;
    private List<int> stringArray = new List<int>();
    private DateTime timeTaken;
    public static double longit;
    public static double lat;
    public static string where;
    public TaskDescription(TaskAllo t, string UserID, int ID, string status, string name, string description)
    {
        InitializeComponent();
        client = new HttpClient();
        taskAllo = t;
        userID = UserID;
        taskPage = new TaskPage(UserID);
        TaskDescDisplay(ID, status, name, description);

    }

    public TaskDescription(MedAllo t, string UserID, int ID, string status, string name, string description)
    {
        InitializeComponent();
        client = new HttpClient();
        medAllo = t;
        userID = UserID;
        taskPage = new TaskPage(UserID);
        TaskDescDisplay(ID, status, name, description);

    }

    private async void TaskDescDisplay(int id, string status, string TaskNames, string descriptions)
    {
        if (TaskNames.ToLower().Equals("questionnaire"))
        {
            TaskName.Text = "Health Check";
            TaskName.FontSize = 20;
            TaskName.FontAttributes = FontAttributes.Bold;
            description.Text = descriptions;
            description.FontSize = 16;
        }
        else
        {
            TaskName.Text = TaskNames;
            TaskName.FontSize = 20;
            TaskName.FontAttributes = FontAttributes.Bold;
            description.Text = descriptions;
            description.FontAttributes = FontAttributes.Bold;
            description.FontSize = 16;
        }

        populate.Children.Clear();
        if (taskAllo != null)
        {
            string[] strings = taskAllo.AnimalId.Split(' ');
            numQs = strings.Length;

            if (taskAllo.Task_Id == 6 && taskPage.counter != strings.Length)
            {
                foreach (string str in strings)
                {
                    int animalId = int.Parse(str);
                    var button = new Button
                    {
                        Text = "Health check for cow " + await getCowName(animalId) + " (not complete)",

                        BackgroundColor = Colors.White,
                        CornerRadius = 5,
                        TextColor = Colors.Black,
                        HeightRequest = 50,
                        CommandParameter = new { Id = userID, AnimalId = animalId }
                    };
                    button.Clicked += Quest;
                    populate.Children.Add(button);
                }
                btn1 = new Button()
                {
                    Text = "Complete Task",

                    BackgroundColor = Colors.White,
                    CornerRadius = 5,
                    TextColor = Colors.Black,
                    HeightRequest = 50,
                    CommandParameter = new { ID = id }

                };
                btn1.IsEnabled = (taskPage.counter == strings.Length);
                btn1.Clicked += Doneprogress;
                populate.Children.Add(btn1);
            }
            else if (taskAllo.Task_Id == 5 && taskPage.counter != strings.Length)
            {
                foreach (string str in strings)
                {
                    int animalId = int.Parse(str);
                    if (await getCowsQuarantine(animalId))
                    {
                        var button = new Button
                        {
                            Text = "Feed cow " + await getCowName(animalId) + " (not complete)",

                            BackgroundColor = Colors.White,
                            CornerRadius = 5,
                            TextColor = Colors.Black,
                            HeightRequest = 50,
                            CommandParameter = new { Id = userID, AnimalId = animalId }
                        };
                        button.Clicked += FeedQuest;
                        populate.Children.Add(button);
                    }
                    else
                    {
                        stringArray.Add(animalId);
                        num = 1;
                        taskPage.counter++;
                    }
                }
                btn1 = new Button()
                {
                    Text = "Complete Task",

                    BackgroundColor = Colors.White,
                    CornerRadius = 5,
                    TextColor = Colors.Black,
                    HeightRequest = 50,
                    CommandParameter = new { ID = id }

                };
                btn1.IsEnabled = (taskPage.counter == strings.Length);
                btn1.Clicked += Doneprogress;
                populate.Children.Add(btn1);
            }

            else
            {
                if (status != null)
                {

                    if (status.ToLower().Equals("in progress"))
                    {
                        var button1 = new Button()
                        {
                            Text = "Complete Task",

                            BackgroundColor = Colors.White,
                            CornerRadius = 5,
                            TextColor = Colors.Black,
                            HeightRequest = 50,
                            CommandParameter = new { ID = id }

                        };
                        button1.Clicked += Doneprogress;
                        populate.Children.Add(button1);
                    }
                    else if (status.ToLower().Equals("not started"))
                    {
                        var button = new Button()
                        {
                            Text = "Start Task",

                            BackgroundColor = Colors.White,
                            CornerRadius = 5,
                            TextColor = Colors.Black,
                            HeightRequest = 50,
                            CommandParameter = new { ID = id }

                        };
                        button.Clicked += Startprogress;
                        populate.Children.Add(button);
                    }
                }
            }
        }
        else if(medAllo!= null)
        {
            if (status != null)
            {

                if (status.ToLower().Equals("in progress"))
                {
                    var button1 = new Button()
                    {
                        Text = "Complete Task",

                        BackgroundColor = Colors.White,
                        CornerRadius = 5,
                        TextColor = Colors.Black,
                        HeightRequest = 50,
                        CommandParameter = new { ID = id }

                    };
                    button1.Clicked += Doneprogress;
                    populate.Children.Add(button1);
                }
                else if (status.ToLower().Equals("not started"))
                {
                    var button = new Button()
                    {
                        Text = "Start Task",

                        BackgroundColor = Colors.White,
                        CornerRadius = 5,
                        TextColor = Colors.Black,
                        HeightRequest = 50,
                        CommandParameter = new { ID = id }

                    };
                    button.Clicked += Startprogress;
                    populate.Children.Add(button);
                }
            }
            }


    }

    private async void FeedQuest(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            taskPage.counter++;
            var para = (dynamic)button.CommandParameter;
            await Navigation.PushAsync(new FeedQs(para.AnimalId, userID));
            button.IsEnabled = false;
            button.Text = "Feed animal " + await getCowName(para.AnimalId) + " (complete)";
            if (taskPage.counter == numQs)
            {
                btn1.IsEnabled = true;

            }

        }
    }

    private async void Quest(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            taskPage.counter++;
            var para = (dynamic)button.CommandParameter;
            await Navigation.PushAsync(new Questionaire(para.Id, para.AnimalId));
            button.IsEnabled = false;
            button.Text = "Health check for animal " + await getCowName(para.AnimalId) + " (complete)";
            if (taskPage.counter == numQs)
                btn1.IsEnabled = true;

        }
    }

    private async Task<Location> GetLocationAsync()
    {
        try
        {
            var req = new GeolocationRequest(GeolocationAccuracy.Medium, TimeSpan.FromSeconds(30));
            var location = await Geolocation.GetLocationAsync(req);

            if (location == null)
            {
                location = await Geolocation.GetLocationAsync(new GeolocationRequest
                {
                    DesiredAccuracy = GeolocationAccuracy.Medium,
                    Timeout = TimeSpan.FromSeconds(30)
                });
            }

            if (location != null)
            {
                return location;
            }
            else
            {
                await DisplayAlert("Location Error", "Unable to get location", "OK");
                return null;
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
            return null;
        }
    }


    private async void Doneprogress(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            var para = (dynamic)button.CommandParameter;

            // Get the current location
            var location = await GetLocationAsync();
            if (location != null)
            {
                // Storing location data
                double latitude = location.Latitude;
                lat = latitude;
                double longitude = location.Longitude;
                longit = longitude;

                var placemark = await Geocoding.GetPlacemarksAsync(lat, longit);
                var place = placemark?.FirstOrDefault();

                if (place != null)
                {
                    string placeName = $"{place.Thoroughfare},{place.Locality}, {place.CountryName}";
                    where = placeName;
                }
                if (taskAllo != null)
                {
                    var TaskAllo = new
                    {
                        Id = para.ID,
                        Task_ID = taskAllo.Task_Id,
                        User_ID = taskAllo.User_Id,
                        Status = "Done",
                        DueDate = taskAllo.Duedate,
                        AnimalId = taskAllo.AnimalId, 
                    };

                    try
                    {
                        HttpResponseMessage response = await UpdateAsync(TaskAllo);

                        if (response.IsSuccessStatusCode)
                        {
                            await DisplayAlert("Alert", "Task done", "OK");
                            await Shell.Current.GoToAsync("//Home?refresh=true", true);
                        }
                        else
                        {
                            await DisplayAlert("error", "unable to update task status " + response, "OK");
                        }
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("error", "" + ex, "OK");
                    }
                }
                else if (medAllo != null)
                {
                    var MedAllo = new
                    {
                        Id = para.ID,
                        Med_ID = medAllo.Med_Id,
                        User_ID = medAllo.User_Id,
                        Status = "Done",
                        Date = medAllo.Date,
                        AnimalId = medAllo.AnimalId,
                    };

                    try
                    {
                        HttpResponseMessage response = await MedUpdateAsync(MedAllo);

                        if (response.IsSuccessStatusCode)
                        {
                            await DisplayAlert("Alert", "Task done", "OK");
                            await Shell.Current.GoToAsync("//Home?refresh=true", true);
                        }
                        else
                        {
                            await DisplayAlert("error", "unable to update task status " + response, "OK");
                        }
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("error", "" + ex, "OK");
                    }
                }
            }
        }
    }


    private async void Startprogress(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            var para = (dynamic)button.CommandParameter;
            if (taskAllo != null)
            {
                var TaskAllo = new
                {
                    Id = para.ID,
                    Task_ID = taskAllo.Task_Id,
                    User_ID = taskAllo.User_Id,
                    Status = "In Progress",
                    DueDate = taskAllo.Duedate,
                    AnimalId = taskAllo.AnimalId,
                };

                try
                {
                    HttpResponseMessage response = await UpdateAsync(TaskAllo);


                    if (response.IsSuccessStatusCode)
                    {
                        if (num == 1)
                        {
                            await Navigation.PushAsync(new FeedQs(stringArray, userID));
                        }
                        await DisplayAlert("Alert", "Task started", "OK");
                        await Shell.Current.GoToAsync("//Home?refresh=true", true);
                    }
                    else
                    {
                        // Invalid credentials
                        await DisplayAlert("error", "unable to update task status " + response, "OK");
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("error", "" + ex, "OK");
                }
            }
            else if (medAllo != null)
            {
                var MedAllo = new
                {
                    Id = para.ID,
                    Med_ID = medAllo.Med_Id,
                    User_ID = medAllo.User_Id,
                    Status = "In Progress",
                    Date = medAllo.Date,
                    AnimalId = medAllo.AnimalId,
                };

                try
                {
                    HttpResponseMessage response = await MedUpdateAsync(MedAllo);


                    if (response.IsSuccessStatusCode)
                    {
                        if (num == 1)
                        {
                            await Navigation.PushAsync(new FeedQs(stringArray, userID));
                        }
                        await DisplayAlert("Alert", "Task started", "OK");
                        await Shell.Current.GoToAsync("//Home?refresh=true", true);
                    }
                    else
                    {
                        // Invalid credentials
                        await DisplayAlert("error", "unable to update task status " + response, "OK");
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("error", "" + ex, "OK");
                }
            }
        }

    }
    //get cow details

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

    private async Task<bool> getCowsQuarantine(int cid)
    {
        HttpResponseMessage respon = await AnimalAsync(cid);
        string responseBodys = await respon.Content.ReadAsStringAsync();
        if (respon.IsSuccessStatusCode)
        {
            var cows = JsonConvert.DeserializeObject<FarmacyAPI.Models.Animal>(responseBodys);

            if (cows.Kraal == 5)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            await DisplayAlert("error here", "error is here", "OK");
            return false;
        }
    }

    private async Task<HttpResponseMessage> UpdateAsync(object task)
    {
        var json = JsonConvert.SerializeObject(task);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PutAsync("http://10.0.2.2:7041/api/Farmacy/updateTaskStatus", content);
    }

    private async Task<HttpResponseMessage> MedUpdateAsync(object task)
    {
        var json = JsonConvert.SerializeObject(task);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PutAsync("http://10.0.2.2:7041/api/Farmacy/updateMedAlloStatus", content);
    }

    private async Task<HttpResponseMessage> AnimalAsync(int animalID)

    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetsAnimal?id={animalID}";
        var json = JsonConvert.SerializeObject(animalID);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.GetAsync(url);
    }
}