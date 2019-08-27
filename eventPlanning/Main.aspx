<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="eventPlanning.Main" %>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>  
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
    <title>
    </title>
    <style type="text/css">        
        .auto-style2 
        {
            width: 250px;
            height: 250px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -125px 0 0 -125px;
            text-align: center;
        }        
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <img src="Images/main.jpg" style="height: 100%; width: 1920px;">  
        
            <div class="auto-style2">                  
                <asp:TreeView id="TreeView1" runat="server" ShowLines="True" MaxDataBindDepth="1" DataSourceID="SiteMapDataSource1" Font-Size="XX-Large" />        
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" /> 
            </div>
        </form>
    </body>
</html>
