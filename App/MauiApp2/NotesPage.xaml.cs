using FarmacyAPI.Models;
using Newtonsoft.Json;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp2;

public partial class NotesPage : ContentPage
{
    private readonly HttpClient client;
    public NotesPage()
	{
		InitializeComponent();
        client = new HttpClient();
	}

    

    private async void btnSave(object? sender, EventArgs e)
    {
        var noted = new
        {
            Notes = entNotes.Text,
            Title = tlName.Text,
            TaskDate = DateOnly.FromDateTime(DateTime.Now),
        };

        try
        {
            HttpResponseMessage response = await UpdateAsync(noted);


            if (response.IsSuccessStatusCode)
            {
                await DisplayAlert("Alert", "Note Saved", "OK");
            }
            else
            {
                // Invalid credentials
                await DisplayAlert("error", "unable to save notes " + response, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "" + ex, "OK");
        }
    }

    private async void btnDelete(object? sender, EventArgs e)
    {
        tlName.Text= string.Empty;
        entNotes.Text = string.Empty;
    }

    private async Task<HttpResponseMessage> UpdateAsync(object animal)
    {
        var json = JsonConvert.SerializeObject(animal);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PutAsync("http://10.0.2.2:7041/api/Farmacy/UpdateTodoList", content);
    }

    private async Task<HttpResponseMessage> NotesAsync()
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetTodoList";
        return await client.GetAsync(url);
    }
}