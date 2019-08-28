using System;
using System.Globalization;
using System.Threading;
using System.Web.UI;

namespace eventPlanning
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en-GB");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-GB");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string [] valuesOfFields = new string[] { TextBox1.Text, TextBox2.Text };

            if (Requests.CheckFields(valuesOfFields) == true)
            {
                if (CheckBox1.Checked == true)
                {
                    if (Requests.CheckDuplicate("SELECT [FirstName] FROM Admin WHERE [LastName] = '" + TextBox2.Text + "'", TextBox1.Text) == true)
                    {
                        Page.Session["role"] = 2;
                        Page.Session["adminOrUserName"] = TextBox1.Text + " " + TextBox2.Text;
                        Response.Redirect("main.aspx");
                    }
                    else
                    {
                        Response.Write("Incorrect admin first name and(or) last name!");
                    }
                }
                else
                {
                    if (Requests.CheckDuplicate("SELECT [FirstName] FROM Client WHERE [LastName] = '" + TextBox2.Text + "'", TextBox1.Text) == true)
                    {
                        Page.Session["role"] = 1;
                        Page.Session["adminOrUserName"] = TextBox1.Text + " " + TextBox2.Text;
                        Page.Session["IdClient"] = Requests.GetValue("SELECT Id FROM Client WHERE [LastName] = '" + TextBox2.Text + "' AND [FirstName] = '" + TextBox1.Text + "'");
                        Response.Redirect("Main.aspx");
                    }
                    else
                    {
                        Response.Write("Incorrect client first name and(or) last name!");
                    }
                }
            }
            else
            {                
                Response.Write("Fill in all fields!");
            }
        }        
        
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string [] valuesOfFields = new string[] { TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text };

            if (Requests.CheckFields(valuesOfFields) == true)
            {
                if (Requests.CheckDuplicate("SELECT [FirstName] FROM Client WHERE [LastName] = '" + TextBox2.Text + "'", TextBox1.Text) == false)
                {
                    int id = Convert.ToInt32(Requests.GetValue("SELECT MAX(Id) FROM [Client]")) + 1;
                    Requests.Request("INSERT INTO [Client] ([Id], [FirstName], [LastName], [DateOfBirth], [Address], [Phone], [Email]) VALUES ('" + id + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "', '" + TextBox8.Text + "')");
                    Page.Session["role"] = 1;
                    Page.Session["adminOrUserName"] = TextBox3.Text;
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    Response.Write("The client already exists!");
                }
            }
            else
            {
                Response.Write("Fill in all fields!");
            }
        }
    }
}