<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="eventPlanning.WebForm4" %>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Id" Width="600px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="VIN" HeaderText="VIN" SortExpression="VIN" />
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
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/WebForm1.aspx">Logout</asp:HyperLink>
            <asp:Label ID="Label13" runat="server" Text=" ]"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Auto]" DeleteCommand="DELETE FROM [Auto] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Auto] ([Id], [Make], [Model], [VIN]) VALUES (@Id, @Make, @Model, @VIN)" UpdateCommand="UPDATE [Auto] SET [Make] = @Make, [Model] = @Model, [VIN] = @VIN WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="VIN" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="VIN" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </div>    
        <div style="overflow: hidden;">
            <div style="width: 100%;">
        <br />        
        <div style="float: left; width: 300px; height: 200px;">
            <asp:Label ID="Label1" runat="server" BackColor="Yellow" Text="Delete auto"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" class="button" OnClick="Button1_Click" Text="OK" Width="100px" />         
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Main.aspx">Main</asp:HyperLink>
            <br />
         </div>
        <div style="float: left; width: 300px; height: 150px;">
            <asp:Label ID="Label14" runat="server" BackColor="Yellow" Text="Add auto"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" Text="Id"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
            <asp:Label ID="Label16" runat="server" Text="Make"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Width="100px"></asp:TextBox>
            <asp:Label ID="Label17" runat="server" Text="Model"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Width="100px"></asp:TextBox>
            <asp:Label ID="Label18" runat="server" Text="VIN"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" class="button" OnClick="Button2_Click" Text="OK" Width="100px" />         
            <br />
            <br />
            <br />
         </div>
    </div>
    </div>
    </form>
</body>
</html>
