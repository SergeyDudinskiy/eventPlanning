using System;
using System.Web.UI;

namespace eventPlanning
{
    public partial class WebForm6 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["role"].ToString() == "2")
            {
                Label8.Text = "You are logged in as admin: " + Page.Session["adminOrUserName"] + " [ ";
            }
            else
            {
                Response.Write("<div><font color=red><h1>The only access to the administration!</h1></font></div>");
                Response.End();
            }
        }
    }
}

       