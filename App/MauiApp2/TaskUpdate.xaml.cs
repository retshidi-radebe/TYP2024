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

public partial class TaskUpdate : ContentPage
{
    private readonly HttpClient client;
    private ArrayList workers = new ArrayList();
    private ArrayList ques = new ArrayList();

    public TaskUpdate()
	{
        client = new HttpClient();
		InitializeComponent();
        showWorkers();

    }

    private async void TaskDisplay()
    {
        int count = 0;
        try
        {
            string url = "http://10.0.2.2:7041/api/Farmacy/GetAllocatedTasks";
            HttpResponseMessage response = await client.GetAsync(url);

            string responseBody = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                var result = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.TaskAllo>>(responseBody);
                if (result != null)
                {
                    foreach (var t in result)
                    {
                        if (t.User_Id.Equals((UserID.SelectedItem as string)+ "@gmail.com"))
                        {
                            //table.Clear();
                            DateTime tasktoday = t.Duedate.Date;
                            DateTime timeNow = DateTime.Now.Date;
                            if(tasktoday == timeNow)
                            {
                                addDetails(t, t.Id, t.Task_Id, t.Status, (UserID.SelectedItem as string) + "@gmail.com");
                                count++;
                            }
                        }
                    }
                    if(count>0)
                    {
                        locations.Text = "Longitude: " + TaskDescription.longit + " \nLatitude: " + TaskDescription.lat;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "" + ex, "OK");
        }
    }

    private void selectedUser(object sender, EventArgs e)
    {
        if(UserID.SelectedItem != null)
        {
            table.Clear();
            locations.Text = "";
            TaskDisplay();
            
        }
    }

    public async void addDetails(TaskAllo t, int id, int taskID, string taskStatus, string user)
    {
        //table.Clear();
        HttpResponseMessage responses = await AlloAsync(taskID);
        string responseBodys = await responses.Content.ReadAsStringAsync();

        if (responses.IsSuccessStatusCode)
        {
            try
            {
                var results = JsonConvert.DeserializeObject<FarmacyAPI.Models.Task>(responseBodys);

                if (results != null)
                {
                    if (results.Id == 6)
                    {
                        var outcome = await CheckHealthCheck(user);
                        var stack1 = new StackLayout
                        {
                            Orientation = StackOrientation.Horizontal,
                            BackgroundColor = Colors.LightGray,
                        };
                        var name1 = new Label
                        {
                            Text = "Task Name",
                            FontSize = 12,
                            FontFamily = "Verdana",
                            FontAttributes = FontAttributes.Bold,
                            HorizontalOptions = LayoutOptions.StartAndExpand,
                        };

                        var risk = new Label
                        {
                            Text = "Outcome",
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.Center,
                        };

                        var status1 = new Label
                        {
                            Text = "Status",
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.EndAndExpand,
                        };

                        stack1.Children.Add(name1);
                        stack1.Children.Add(risk);
                        stack1.Children.Add(status1);
                        var viewcell1 = new ViewCell();
                        viewcell1.View = stack1;
                        table.Add(viewcell1);

                        var stack = new StackLayout
                        {
                            Orientation = StackOrientation.Horizontal,
                        };
                        var name = new Label
                        {
                            Text = results.Task_Name ,
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.StartAndExpand,
                        };

                        var riskL = new Label
                        {
                            Text = outcome,
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.Center,
                        };

                        var status = new Label
                        {
                            Text = taskStatus,
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.EndAndExpand,
                        };

                        stack.Children.Add(name);
                        stack.Children.Add(riskL);
                        stack.Children.Add(status);
                        var viewcell = new ViewCell();
                        viewcell.View = stack;

                        table.Add(viewcell);
                    }
                    else
                    {
                        var stack1 = new StackLayout
                        {
                            Orientation = StackOrientation.Horizontal,
                            BackgroundColor = Colors.LightGray,
                        };
                        var name1 = new Label
                        {
                            Text = "Task Name",
                            FontSize = 12,
                            FontFamily = "Verdana",
                            FontAttributes = FontAttributes.Bold,
                            HorizontalOptions = LayoutOptions.StartAndExpand,
                        };
                        var status1 = new Label
                        {
                            Text = "Status",
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.EndAndExpand,
                        };

                        stack1.Children.Add(name1);
                        stack1.Children.Add(status1);
                        var viewcell1 = new ViewCell();
                        viewcell1.View = stack1;
                        table.Add(viewcell1);

                        var stack = new StackLayout
                        {
                            Orientation = StackOrientation.Horizontal,
                        };
                        var name = new Label
                        {
                            Text = results.Task_Name,
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.StartAndExpand,
                        };
                        var status = new Label
                        {
                            Text = taskStatus,
                            FontSize = 12,
                            FontFamily = "Verdana",
                            HorizontalOptions = LayoutOptions.EndAndExpand,
                        };

                        stack.Children.Add(name);
                        stack.Children.Add(status);
                        var viewcell = new ViewCell();
                        viewcell.View = stack;

                        table.Add(viewcell);
                    }
                }
            }
            catch (Exception e)
            {
                await DisplayAlert("checher", "exception response: " + e, "done");
            }

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
                        workers.Add(r.Name);
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

    private async Task<string> CheckHealthCheck(string user)
    {
        string outcome = "";
        int count = 0;
        HttpResponseMessage responses = await QueAsync();
        string responseBodys = await responses.Content.ReadAsStringAsync();

        if (responses.IsSuccessStatusCode)
        {
            try
            {
                var results = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.Questionaire>>(responseBodys);

                if (results != null)
                {
                    //await DisplayAlert("Success", "Questionaire submitted\n" + "Animal tag: \nHealth status: High Risk", "OK");
                    foreach (var r in results)
                    {
                        if (r.U_ID.Equals(user))
                        {
                            //await DisplayAlert("Success", "Questionaire submitted\n" + "Animal tag: \nHealth status: High Risk", "OK");
                            DateTime tasktoday = r.DateAcquired.Date;
                            DateTime timeNow = DateTime.Now.Date;
                            if (tasktoday == timeNow)
                            {
                                var tot = r.Q_One + r.Q_Two + r.Q_Three + r.Q_Four + r.Q_Five + r.Q_Six + r.Q_Seven + r.Q_Eight + r.Q_Nine + r.Q_Ten;
                                if (tot >= 5)
                                {
                                    count++;
                                    //await DisplayAlert("Success", "Questionaire submitted\n" + "Animal tag: \nHealth status: High Risk", "OK");
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception e)
            {
                await DisplayAlert("checher", "exception response: " + e, "done");
            }

        }
        
        if(count>0)
        {
            outcome = "High Risk \n Detected";
        }
        else
        {
            outcome = "No High Risk \n Detected";
        }

        return outcome;
    }

    private async Task<HttpResponseMessage> AlloAsync(int user)
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetAllocatedTask?id={user}";
        var json = JsonConvert.SerializeObject(user);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.GetAsync(url);
    }

    private async Task<HttpResponseMessage> WorkerAsync()
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetWorkers";
        return await client.GetAsync(url);
    }

    private async Task<HttpResponseMessage> QueAsync()
    {
        string url = $"http://10.0.2.2:7041/api/Farmacy/GetQuestionnaires";
        return await client.GetAsync(url);
    }
}