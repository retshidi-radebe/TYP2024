

using FarmacyAPI;
using FarmacyAPI.Controllers;
using MauiApp2.Repository;
using Newtonsoft.Json;
using System.Diagnostics;
using System.ServiceModel;
using System.Text;

namespace MauiApp2;

public partial class LoginPage : ContentPage
{
	
	public static string userN;
	string password="";
	int results;
    private static readonly HttpClient client = new HttpClient();

    public LoginPage()
	{
		InitializeComponent();
    }

    
    private async void LoginClick(object sender, EventArgs e)
    {
        var user = new
        {
            Id = Username.Text,
            Password = Password.Text,
        };
        //storing the id of user

        userN= Username.Text;
        try
        {
            HttpResponseMessage response = await LoginAsync(user);

            string responseBody = await response.Content.ReadAsStringAsync();


            if (response.IsSuccessStatusCode)
            {
                var result = JsonConvert.DeserializeObject<dynamic>(responseBody);

                if (result != null && result.userType != null)
                {
                    int userType = result.userType;

                    switch (userType)
                    {
                        case 1:
                            App.Current.MainPage = new ManagerShell();
                            break;
                        case 2:

                            App.Current.MainPage = new WorkerShell();
                            break;
                        default:
                            await DisplayAlert("error", "required usertype", "OK");
                            break;
                    }

                    //if (userType == 1)
                    //{
                    //    // Admin user
                    //    await Navigation.PushAsync(new DashManager(user.Id));
                    //}
                    //else if (userType == 2)
                    //{
                    //    // Worker user
                    //    await Navigation.PushAsync(new DashboardPage(user.Id));
                    //}
                    //else
                    //{
                    //    // Handle other user types if necessary
                    //    await DisplayAlert("error", "required usertype", "OK");
                    //}
                }
                else
                {
                    //err.InnerText = $"Response:{responseBody}";
                    await DisplayAlert("error", "result is null", "OK");
                }
            }
            else
            {
                // Invalid credentials
                await DisplayAlert("error", "incorrect password or username "+response, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "" + ex, "OK");
        }
    }

    


    private async Task<HttpResponseMessage> LoginAsync(object user)
    {
        var json = JsonConvert.SerializeObject(user);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PostAsync("http://10.0.2.2:7041/api/Farmacy/login", content);
    }

    private async void RegisterHere(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Register());
    }

}