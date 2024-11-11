using FarmacyAPI.Data;
using MauiApp2.Model;

namespace MauiApp2;

public partial class DashboardPage : ContentPage
{
    public string id;
	public DashboardPage(string Id)
	{
		InitializeComponent();
        this.id = LoginPage.userN;

        var taskTapGesture = new TapGestureRecognizer();
        taskTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Tasks", true);
        TaskIcon.GestureRecognizers.Add(taskTapGesture);

        var healthTapGesture = new TapGestureRecognizer();
        healthTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//HealthReport", true);
        HealthIcon.GestureRecognizers.Add(healthTapGesture);

        var animalTapGesture = new TapGestureRecognizer();
        animalTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddAnimal", true);
        AnimalIcon.GestureRecognizers.Add(animalTapGesture);

        var settingTapGesture = new TapGestureRecognizer();
        settingTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Settings", true);
        SettingsIcon.GestureRecognizers.Add(settingTapGesture);

        var ImageTapGesture = new TapGestureRecognizer();
        ImageTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//ImageRec", true);
        SettingsIcon.GestureRecognizers.Add(ImageTapGesture);
        id = Id;
        NavigationGestures();
    }

    public DashboardPage()
    {
        InitializeComponent();
        this.id = LoginPage.userN;
        NavigationGestures();
    }

    private void NavigationGestures()
    {
        var taskTapGesture = new TapGestureRecognizer();
        taskTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Tasks", true);
        TaskIcon.GestureRecognizers.Add(taskTapGesture);

        var healthTapGesture = new TapGestureRecognizer();
        healthTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//HealthReport", true);
        HealthIcon.GestureRecognizers.Add(healthTapGesture);

        var animalTapGesture = new TapGestureRecognizer();
        animalTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddAnimal", true);
        AnimalIcon.GestureRecognizers.Add(animalTapGesture);

        var settingTapGesture = new TapGestureRecognizer();
        settingTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Settings", true);
        SettingsIcon.GestureRecognizers.Add(settingTapGesture);

        var ImageTapGesture = new TapGestureRecognizer();
        ImageTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//ImageRec", true);
        SettingsIcon.GestureRecognizers.Add(ImageTapGesture);
    }

    public async void taskPress(object sender, EventArgs e)
	{
        var taskTapGesture = new TapGestureRecognizer();
        taskTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Tasks?refresh=true", true);
        TaskIcon.GestureRecognizers.Add(taskTapGesture);
    }

	public async void QuestPress(object sender, EventArgs e)
	{
        var healthTapGesture = new TapGestureRecognizer();
        healthTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//HealthReport?refresh=true", true);
        HealthIcon.GestureRecognizers.Add(healthTapGesture);
    }

    public async void NewPress(object sender, EventArgs e)
    {
        var animalTapGesture = new TapGestureRecognizer();
        animalTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddAnimal?refresh=true", true);
        AnimalIcon.GestureRecognizers.Add(animalTapGesture);
    }

    public async void Setting(object sender, EventArgs e)
    {
        var settingTapGesture = new TapGestureRecognizer();
        settingTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Settings?refresh=true", true);
        SettingsIcon.GestureRecognizers.Add(settingTapGesture);
    }

    private async void ImageRec(object sender, EventArgs e)
    {
        var ImageTapGesture = new TapGestureRecognizer();
        ImageTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//ImageRec?refresh=true", true);
        SettingsIcon.GestureRecognizers.Add(ImageTapGesture);
    }
}