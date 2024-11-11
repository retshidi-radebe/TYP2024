namespace MauiApp2;

public partial class ImageRec : ContentPage
{
	public ImageRec()
	{
		InitializeComponent();
	}


	protected async void btnUpload(object sender, EventArgs e)
	{

	}

    protected async void btnCheck(object sender, EventArgs e)
    {
		result.Text = "High Risk";
    }

}