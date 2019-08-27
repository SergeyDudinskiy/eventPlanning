﻿using System;
using System.Web.UI;

namespace eventPlanning
{
    public partial class WebForm4 : Page
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
                if (Requests.Request("SELECT Id FROM [Order] WHERE IdAuto = '" + TextBox1.Text + "'") != "")
                {
                    if (Requests.Request("DELETE FROM [Auto] WHERE Id = '" + TextBox1.Text + "'") != "")
                    {
                        Response.Write("Error!");
                    }
                    else
                    {
                        SqlDataSource1.SelectCommand = "SELECT * FROM [Auto]";
                        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                        GridView1.DataSourceID = "SqlDataSource1";
                    }
                }
                else
                {
                    Response.Write("The deleted car is in the order. The removal is denied!");
                }
            }
            else
            {
                Response.Write("Fill in all fields!");
            }

            TextBox1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string [] values = { TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text };

            if (Requests.CheckFields(values) == true)
            {
                if (Requests.Request("INSERT INTO [Auto] ([Id], [Make], [Model], [VIN]) VALUES ('" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "')") != "")
                {
                    Response.Write("Error!");                    
                }
                else
                {
                    SqlDataSource1.SelectCommand = "SELECT * FROM Auto";
                    SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                    GridView1.DataSourceID = "SqlDataSource1";
                }
            }
            else
            {
                Response.Write("Fill in all fields!");
            }

            TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }
    }
}