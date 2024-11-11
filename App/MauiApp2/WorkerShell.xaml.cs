using FarmacyAPI.Data;
using MauiApp2.Model;
using Microsoft.Maui.Controls;

namespace MauiApp2
{
    public partial class WorkerShell : Shell
    {
        public string id;
        public WorkerShell()
        {
            InitializeComponent();
            //this.id = id;
           // var viewMod= new Navigate(id);
            //var dashboardPage = new DashboardPage(viewMod);
            //Items.Add(new ShellContent { Content=dashboardPage});
            //BindingContext = new DashboardPage(id);
            //BindingContext = new TaskPage(id);
            //BindingContext = new Questionaire(id);
        }

        public async void signOutClick(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());
        }
    }
}
