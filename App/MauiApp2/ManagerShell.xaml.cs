using FarmacyAPI.Data;
using Microsoft.Maui.Controls;

namespace MauiApp2
{
    public partial class ManagerShell : Shell
    {
        public string id;
        public ManagerShell()
        {
            InitializeComponent();
            //this.id = id;
            //BindingContext = new DashManager(id);
        }

        public async void signOutClick(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());
        }
    }
}
