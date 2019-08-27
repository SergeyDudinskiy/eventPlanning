using System;
using System.Web.UI;

namespace eventPlanning
{
    public partial class WebForm3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["role"].ToString() == "2")
            {
                Label3.Text = "You are logged in as admin: " + Page.Session["adminOrUserName"] + " [ ";                
            }
            else
            {
                Response.Write("<div><font color=red><h1>The only access to the administration!</h1></font></div>");
                Response.End();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                Requests.Request("DELETE FROM [Client] WHERE Id = '" + TextBox1.Text + "'");
                Requests.Request("DELETE FROM [Order] WHERE IdClient = '" + TextBox1.Text + "'");
                SqlDataSource1.SelectCommand = "SELECT * FROM [Client]";
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                GridView1.DataSourceID = "SqlDataSource1";
            }
            else
            {
                Response.Write("Fill in all fields!");
            }

            TextBox1.Text = "";
        }        
    }
}