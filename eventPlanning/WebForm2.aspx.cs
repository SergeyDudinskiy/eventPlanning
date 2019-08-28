using System;
using System.Web.UI;

namespace eventPlanning
{
    public partial class WebForm2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["role"].ToString() == "1")
            {
                Label3.Text = "You are logged in as client: " + Page.Session["adminOrUserName"] + " [ ";
            }
            else
            {
                Response.Write("<div><font color=red><h1>Access only from clients!</h1></font></div>");
                Response.End();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Requests.GetValue("SELECT MAX(Id) FROM [Order]")) + 1;
            string idAuto = TextBox1.Text;
            string date = DateTime.Now.Date.ToString();

            if (idAuto != "")
            {
                if (Requests.Request("INSERT INTO [Order] ([Id], [IdAuto], [IdClient], [Date]) VALUES ('" + id + "', '" + idAuto + "', '" + Page.Session["IdClient"] + "', '" + date + "')") != "")
                {
                    Response.Write("Error!");
                }
                else
                {
                    Response.Write("Order successfully completed!");
                }
            }
            else
            {
                Response.Write("Fill in all fields!");
            }

            TextBox1.Text = "";
        }                 
    }
}
    
