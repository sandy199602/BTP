<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

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
    <asp:Label ID="Label1" Text="Welcome Admin" runat="server">

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
            <legend>Customer details</legend>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                    <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [email] = @email" InsertCommand="INSERT INTO [customer] ([email], [password], [firstname], [lastname], [mobileno]) VALUES (@email, @password, @firstname, @lastname, @mobileno)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [password] = @password, [firstname] = @firstname, [lastname] = @lastname, [mobileno] = @mobileno WHERE [email] = @email">
                <DeleteParameters>
                    <asp:Parameter Name="email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </fieldset>
    </form>
</body>
</html>
