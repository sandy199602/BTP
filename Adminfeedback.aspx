<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminfeedback.aspx.cs" Inherits="Adminfeedback" %>

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
            <legend>Feedback details</legend>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="slno,email" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="slno" HeaderText="slno" InsertVisible="False" ReadOnly="True" SortExpression="slno" />
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [feedback] WHERE [slno] = @slno AND [email] = @email" InsertCommand="INSERT INTO [feedback] ([email], [Title], [Content], [status]) VALUES (@email, @Title, @Content, @status)" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [Title] = @Title, [Content] = @Content, [status] = @status WHERE [slno] = @slno AND [email] = @email">
                <DeleteParameters>
                    <asp:Parameter Name="slno" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Content" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Content" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="slno" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </fieldset>
    </form>
</body>
</html>
