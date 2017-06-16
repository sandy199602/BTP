<%@ Page Language="C#" AutoEventWireup="true" CodeFile="status.aspx.cs" Inherits="status" %>

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
         <ul class="list">
             <li><a  href="admin.aspx">Home</a></li>
            <li><a  href="Customer.aspx">Customer</a></li>
            <li><a href="addbus.aspx">Add/View Bus</a></li>
            <li><a href="Route.aspx">Route</a></li>
              <li><a href="status.aspx">Status</a></li>
            <li><a href="Adminfeedback.aspx">Feedback</a></li>
        </ul>
    <div>
        <h1>
    <asp:Label ID="welcome" Text="Welcome Admin" runat="server">

    </asp:Label>
            </h1>
    </div>
             <fieldset>
            <legend>Search Status</legend>
            <asp:Label ID="Label1" runat="server" Text="Buscode"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Placeholder="Buscode"></asp:TextBox>
            <br />
            <br />
                  <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Placeholder="Date"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </fieldset>
        
        <fieldset>
            <legend>Status details</legend>
            <asp:GridView ID="GridView1" runat="server"  >
      
            </asp:GridView>
        
            </fieldset>
    </form>
</body>
</html>
