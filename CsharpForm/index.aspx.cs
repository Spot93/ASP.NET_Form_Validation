using System;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Get values from textboxes
        string firstName = Request["txtFirstName"];
        string age = Request["txtAge"];
        string email = Request["txtEmail"];
        string phone = Request["txtPhone"];

        //Initialize some variables to be assigned below
        string musicChk = "";
        string sportsChk = "";
        string readingChk = "";
        string volunteeringChk = "";
        
        //Initialize some variables to be assigned below
        string radRock = "";
        string radPop = "";
        string radClassical = "";
        string radJazz = "";
        string radOther = "";

        //Checkbox logic to determine which are selected
        if (chkMusic.Checked)
        {
            musicChk = "Music" + "<br />";
        }

        if (chkSports.Checked)
        {
            sportsChk = "Sports" + "<br />";
        }

        if (chkReading.Checked)
        {
            readingChk = "Reading" + "<br />";
        }

        if (chkVolunteering.Checked)
        {
            volunteeringChk = "Volunteering" + "<br />";
        }
        //End checkbox logic

        //Determine which radiobutton is selected
        if (rbRock.Checked)
        {
            radRock = "Rock";
        }
        else if (rbPop.Checked) {
            radPop = "Pop";
        }
        else if (rbClassical.Checked)
        {
            radClassical = "Classical";
        }
        else if (rbJazz.Checked)
        {
            radJazz = "Jazz";
        }
        else if (rbOther.Checked)
        {
            radOther = "Other";
        }
        //End radiobutton logic.

        //Variable to store the user's favorite color
        string favoriteColor = ddlColor.SelectedValue.ToString();

        //If it's the first time the page is loaded, we don't want to show anything since no information was entered
        if (IsPostBack)
        {
            lblInfo.Text = "<h3>" + "Here's the information entered in the form: " + "</h3>" +
                          "Name: " + firstName + "<br />" +
                          "Age: " + age + "<br />" +
                          "Email: " + email + "<br />" +
                          "Phone: " + phone + "<br />" + "<br />" +

                          "Hobbies Interested In: " + "<br />" +
                          musicChk + sportsChk + readingChk + volunteeringChk + "<br />" +

                          "Music Interested In: " + "<br />" +
                          radRock + radPop + radClassical + radJazz + radOther + "<br />" + "<br />" +

                          "Favorite Color: " + "<br />" + favoriteColor;
        }

    }
}