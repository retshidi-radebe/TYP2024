using Azure;
using FarmacyAPI.Data;
using FarmacyAPI.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Maui.ApplicationModel.Communication;
using Microsoft.VisualBasic;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Xml.Linq;

namespace MauiApp2;

public partial class AlloTask : ContentPage
{
    private static readonly HttpClient client = new HttpClient();
    private ArrayList tasks = new ArrayList();
    private ArrayList taskIdentity = new ArrayList();
    private ArrayList workers = new ArrayList();
    private ArrayList workerIdentity = new ArrayList();
    public AlloTask()
	{
		InitializeComponent();
        showTasks();
        showWorkers();

    }

    private async void AllocateTask(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        try
        {
            var allo = new
            {
               Task_Id = getID(TaskID.SelectedItem as string),
               User_Id = UserID.SelectedItem as string,
               Status = "Not Started",
               DueDate = date,
                AnimalId = "",
                Feed = 0
            };

            var response = await TaskAlloAsync(allo);

            if (response.IsSuccessStatusCode)
            {
                await DisplayAlert("Success", "Task allocated " + date, "OK");

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

    private async void showWorkers()
    {
        HttpResponseMessage responses = await WorkerAsync();
        string responseBodys = await responses.Content.ReadAsStringAsync();

        if (responses.IsSuccessStatusCode)
        {
            try
            {
                var results = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.User>>(responseBodys);

                if (results != null)
                {
                  foreach (var r in results)
                    {
                        workers.Add(r.Id);
                    }
                  UserID.ItemsSource = workers;
                }
            }
            catch (Exception e)
            {
                await DisplayAlert("checher", "exception response: " + e, "done");
            }

        }
    }

    private async void showTasks()
    {
        HttpResponseMessage responses = await TasksAsync();
        string responseBodys = await responses.Content.ReadAsStringAsync();

        if (responses.IsSuccessStatusCode)
        {
            try
            {
                var results = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.Task>>(responseBodys);

                if (results != null)
                {
                    foreach (var r in results)
                    {
                        tasks.Add(r.Task_Name);
                        taskIdentity.Add(r.Id + "#" + r.Task_Name);
                    }
                    TaskID.ItemsSource = tasks;
                }
            }
            catch (Exception e)
            {
                await DisplayAlert("checher", "exception response: " + e, "done");
            }

        }
    }

    //get id of selected
    private int getID(string task)
    {
         
        foreach (string t in taskIdentity)
        {
            string[] s;
            s = t.Split('#');
            if (s[1].Equals(task))
            {
                return Convert.ToInt32(s[0]);
            }
        }
        return -1;
    }

    private async Task<HttpResponseMessage> TaskAlloAsync(object Allotask)
    {
        var json = JsonConvert.SerializeObject(Allotask);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PostAsync("http://10.0.2.2:7041/api/Farmacy/AllocateTask", content);
    }
    //for receiving tasks from the database
    private async Task<HttpResponseMessage> TasksAsync()
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetTasks";
        return await client.GetAsync(url);
    }

    private async Task<HttpResponseMessage> WorkerAsync()
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetWorkers";
        return await client.GetAsync(url);
    }
}