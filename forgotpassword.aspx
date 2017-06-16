<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <title></title>
    <style>
        .fgt{
           
   width:400px;
    position: absolute;
    top: 42%;
    left: 50%;
    margin-right: -50%;
    transform: translate(-50%, -50%);
            height: 181px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <img src="banner12.jpg" style=" height:100px; width: 230px;" alt="Bus logo" >
            <img src="Capture.PNG" alt="Bus logo" style="height: 67px; background-color:yellow;" >
     <ul class="list">
            <li><a  href="Default.aspx">Search Buses</a></li>
            <li><a href="printticket.aspx">Print Ticket</a></li>
            <li><a href="CancelTicket.aspx">Cancel Ticket</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
                       
        </ul>
        <div class="fgt">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="userid" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="label1" runat="server" Text="New Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" Id="newpassword" placeholder="new password"></asp:TextBox>
            <br />
            <br />

             <asp:Label ID="label2" runat="server" Text="Confirm Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="Confirmpassword" placeholder="Confirm Pasword"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="fgtpass" runat="server" Text="Change" OnClick="fgtpass_Click" />
        </div>
    </form>
</body>
</html>
