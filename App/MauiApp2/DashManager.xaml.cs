using FarmacyAPI.Data;

namespace MauiApp2;

public partial class DashManager : ContentPage
{
    public string id;
    public DashManager(string Id)
    {
        InitializeComponent();
        id = Id;
        NavigationGestures();
    }

    private void NavigationGestures()
    {
        var allocateTapGesture = new TapGestureRecognizer();
        allocateTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Allocate");
        AllocateIcon.GestureRecognizers.Add(allocateTapGesture);

        var listTapGesture = new TapGestureRecognizer();
        listTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//TodoList");
        TodoListIcon.GestureRecognizers.Add(listTapGesture);

        var taskTapGesture = new TapGestureRecognizer();
        taskTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddTask");
        AddTaskIcon.GestureRecognizers.Add(taskTapGesture);

        var addaniTapGesture = new TapGestureRecognizer();
        addaniTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddAnimal");
        AnimalIconn.GestureRecognizers.Add(addaniTapGesture);

        var updateTapGesture = new TapGestureRecognizer();
        updateTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//TaskUpdate");
        TUpdateIcon.GestureRecognizers.Add(updateTapGesture);

        var settingsTapGesture = new TapGestureRecognizer();
        settingsTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Settings");
        SettingsIcon.GestureRecognizers.Add(settingsTapGesture);

        var ImageTapGesture = new TapGestureRecognizer();
        ImageTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//ImageRec", true);
        SettingsIcon.GestureRecognizers.Add(ImageTapGesture);
    }

    public DashManager()
    {
        InitializeComponent();
        this.id = LoginPage.userN;

        var allocateTapGesture = new TapGestureRecognizer();
        allocateTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Allocate", true);
        AllocateIcon.GestureRecognizers.Add(allocateTapGesture);

        var listTapGesture = new TapGestureRecognizer();
        listTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//TodoList", true);
        TodoListIcon.GestureRecognizers.Add(listTapGesture);

        var taskTapGesture = new TapGestureRecognizer();
        taskTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddTask", true);
        AddTaskIcon.GestureRecognizers.Add(taskTapGesture);

        var addaniTapGesture = new TapGestureRecognizer();
        addaniTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddAnimal", true);
        AnimalIconn.GestureRecognizers.Add(addaniTapGesture);

        var updateTapGesture = new TapGestureRecognizer();
        updateTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//TaskUpdate", true);
        TUpdateIcon.GestureRecognizers.Add(updateTapGesture);

        var settingsTapGesture = new TapGestureRecognizer();
        settingsTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Settings", true);
        SettingsIcon.GestureRecognizers.Add(settingsTapGesture);

        var ImageTapGesture = new TapGestureRecognizer();
        ImageTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//ImageRec", true);
        SettingsIcon.GestureRecognizers.Add(ImageTapGesture);
    }
    public async void taskPress(object sender, EventArgs e)
    {
        var allocateTapGesture = new TapGestureRecognizer();
        allocateTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Allocate", true);
        AllocateIcon.GestureRecognizers.Add(allocateTapGesture);
    }

    public async void NewPress(object sender, EventArgs e)
    {
        var addaniTapGesture = new TapGestureRecognizer();
        addaniTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddAnimal", true);
        AnimalIconn.GestureRecognizers.Add(addaniTapGesture);
    }

    public async void addTask(object sender, EventArgs e)
    {
        var taskTapGesture = new TapGestureRecognizer();
        taskTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//AddTask", true);
        AddTaskIcon.GestureRecognizers.Add(taskTapGesture);
    }

    public async void Setting(object sender, EventArgs e)
    {
        var settingsTapGesture = new TapGestureRecognizer();
        settingsTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//Settings", true);
        SettingsIcon.GestureRecognizers.Add(settingsTapGesture);
    }
    public async void Note(object sender, EventArgs e)
    {
        var listTapGesture = new TapGestureRecognizer();
        listTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//TodoList", true);
        TodoListIcon.GestureRecognizers.Add(listTapGesture);
    }

    private async void Update(object sender, EventArgs e)
    {
        var updateTapGesture = new TapGestureRecognizer();
        updateTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//TaskUpdate", true);
        TUpdateIcon.GestureRecognizers.Add(updateTapGesture);
    }
    private async void ImageRec(object sender, EventArgs e)
    {
        var ImageTapGesture = new TapGestureRecognizer();
        ImageTapGesture.Tapped += async (s, e) => await Shell.Current.GoToAsync("//ImageRec", true);
        SettingsIcon.GestureRecognizers.Add(ImageTapGesture);
    }
}