<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="eventPlanning.WebForm1" %>
<link rel="stylesheet" href="/Content/Gradient.css">
<link rel="stylesheet" href="/Content/Button.css">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">       
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
    </title>    
    <style type="text/css"> 
        .auto-style1 
        {
            width: 250px;
            height: 200px;
            position: absolute;
            top: 50%;
            left: 33.33%;
            margin: -125px 0 0 -125px;
            text-align: center;
        }   
        .auto-style2 
        {
            width: 250px;
            height: 200px;
            position: absolute;
            top: 50%;
            left: 66%;
            margin: -125px 0 0 -125px;
            text-align: center;
        }                  
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">    
        <br />       
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
        <br />   
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Administrator" Width="150px" AutoPostBack="True" Height="21px" />
        <br />
        <br />    
        <asp:Button ID="Button1" runat="server" class="button" OnClick="Button1_Click" Text="Log in" Width="150px" />  
        <br />
        <br />
    </div>
    <div class="auto-style2">    
        <br />       
        <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" Width="150px" TextMode="Date"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox7" runat="server" Width="150px" TextMode="Phone"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox8" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Images/register.jpg" OnClick="ImageButton1_Click" Width="150px" ValidationGroup="Group1" />
        <br />        
        <br />
        <br />    
    </div>
    </form>
</body>
</html>
