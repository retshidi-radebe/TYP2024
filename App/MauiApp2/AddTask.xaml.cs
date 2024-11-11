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

public partial class AddTask : ContentPage
{
    private static readonly HttpClient client = new HttpClient();
    public AddTask()
	{
		InitializeComponent();
	}
    private async void SubmitTaskClick(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        try
        {
            var task = new
            {
                Task_Name = TaskName.Text,
                Description = Description.Text,
                Category = Category.SelectedItem.ToString(),
            };

            var response = await TaskAsync(task);

            if (response.IsSuccessStatusCode)
            {
                await DisplayAlert("Success", "Task added " + date, "OK");

            }
            else
            {
                await DisplayAlert("error", "Something went wrong: " + task, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error on submit", "" + ex, "OK");
        }
    }

    private async Task<HttpResponseMessage> TaskAsync(object task)
    {
        var json = JsonConvert.SerializeObject(task);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PostAsync("http://10.0.2.2:7041/api/Farmacy/AddTask", content);
    }
}