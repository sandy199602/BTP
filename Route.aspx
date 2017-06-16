<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Route.aspx.cs" Inherits="Route" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
      <title></title>
 
</head>
<body>
    <form id="form1" runat="server">
        <img src="banner12.jpg" style=" height:100px; width: 230px;" alt="Bus logo" >
            <img src="Capture.PNG" alt="Bus logo" style="height: 67px; background-color:yellow;" >
        <h1>
    <asp:Label ID="Label2" Text="Welcome Admin" runat="server">

    </asp:Label>
            </h1>
    <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
    
         <ul class="list">
             <li><a  href="admin.aspx">Home</a></li>
            <li><a  href="Customer.aspx">Customer</a></li>
            <li><a href="addbus.aspx">Add/View Bus</a></li>
            <li><a href="Route.aspx">Route</a></li>
              <li><a href="status.aspx">Status</a></li>
            <li><a href="Adminfeedback.aspx">Feedback</a></li>
        </ul>
    <div>
       
    </div>
        <fieldset>
            <legend>Add Route</legend>
            <asp:Label ID="Label1" runat="server" Text="Route"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Placeholder="Route"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </fieldset>
        <fieldset>
            <legend>Route details</legend>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Slno" DataSourceID="SqlDataSource1" Width="227px">
                <Columns>
                    <asp:BoundField DataField="Slno" HeaderText="Slno" InsertVisible="False" ReadOnly="True" SortExpression="Slno" />
                    <asp:BoundField DataField="Route" HeaderText="Route" SortExpression="Route" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [Route] WHERE [Slno] = @Slno" InsertCommand="INSERT INTO [Route] ([Route]) VALUES (@Route)" SelectCommand="SELECT * FROM [Route]" UpdateCommand="UPDATE [Route] SET [Route] = @Route WHERE [Slno] = @Slno">
                <DeleteParameters>
                    <asp:Parameter Name="Slno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Route" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Route" Type="String" />
                    <asp:Parameter Name="Slno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </fieldset>
    </form>
</body>
</html>
