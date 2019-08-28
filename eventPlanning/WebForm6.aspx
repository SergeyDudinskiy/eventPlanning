<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="eventPlanning.WebForm6" %>
<link rel="stylesheet" href="/Content/Gradient.css">
<link rel="stylesheet" href="/Content/Button.css">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
    </title>
    <style>
        body 
        {
            margin-left:50px; 
        }
    </style> 
    </head>
<body>
    <form id="form1" runat="server">
    <div style="overflow: hidden;">
    <div style="width: 100%;">    
        <div style="float:left; height: 200px; width: 620px; overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="600px" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
       </div>
        <div style="float: right; width: 300px; height: 100px;">               
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/WebForm1.aspx">Logout</asp:HyperLink>
            <asp:Label ID="Label9" runat="server" Text=" ]"></asp:Label>
        </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]" DeleteCommand="DELETE FROM [Admin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Admin] ([Id], [FirstName], [LastName]) VALUES (@Id, @FirstName, @LastName)" UpdateCommand="UPDATE [Admin] SET [FirstName] = @FirstName, [LastName] = @LastName WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </div>
        <p>
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Main.aspx">Main</asp:HyperLink>
        </p>
    </form>
</body>
</html>
