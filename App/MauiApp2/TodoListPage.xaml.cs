namespace MauiApp2;

public partial class TodoListPage : ContentPage
{
	public TodoListPage()
	{
		InitializeComponent();
	}
    public async void AddNoteClick(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new NotesPage());
    }

    private void listView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
    {

    }
}