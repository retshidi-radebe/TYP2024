
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

public partial class AddNewAnimal : ContentPage
{
    private static readonly HttpClient client = new HttpClient();
    public AddNewAnimal()
    {
        InitializeComponent();
    }


    protected async void NewAnimal(object sender, EventArgs e)
    {

        DateTime date = DateTime.Now;
        try
        {
            var animal = new
            {
                Species = AnimalSpecies.SelectedItem.ToString(),
                Gender = AnimalGender.SelectedItem.ToString(),
                Breed = AnimalBreed.SelectedItem.ToString(),
                Colour = AnimalColour.SelectedItem.ToString(),
                A_Weight = Weight.Text,
                Height = Height.Text,
                HealthStatus = Health.SelectedItem.ToString(),
                Kraal = int.Parse(kraal.Text),
                DateAquired = date,
                Age = Age.Text,
                AppetiteStatus = "Normal",
                New_Weight = 0
            };

            var response = await AnimalAsync(animal);

            if (response.IsSuccessStatusCode)
            {
                await DisplayAlert("Success", "Animal added " + animal.DateAquired, "OK");

            }
            else
            {
                await DisplayAlert("error", "Something went wrong: " + animal.Species, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error on submit", "" + ex, "OK");
        }
    }

    private async Task<HttpResponseMessage> AnimalAsync(object animal)
    {
        var json = JsonConvert.SerializeObject(animal);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PostAsync("http://10.0.2.2:7041/api/Farmacy/RegisterAnimal", content);
    }
}