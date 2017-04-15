<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afterlogin.aspx.cs" Inherits="afterlogin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <style>
        .panel{
            height:1px;
            padding:10px;
        }
            .panel a#logout_pop{
                border: 2px solid #07839f;
                color: #fff;
                background-color: #0483a0;
                background-image: linear-gradient(top,#31b2c3,#0483a0);
                display: block;
                float: right;
                margin-right: 10px;
                padding: 5px 10px;
                text-decoration: none;
                text-shadow: 1px 1px #000;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
            width: 48px;
        }
        </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
   <div style="height:46px">

       <div class="panel">
           
           <a href="Default.aspx" id="logout_pop">Logout</a>
           <h1>Welcome 
           <asp:Label ID="message" runat="server" Text="Label"></asp:Label>
           </h1>
       </div>
       </div>
          <ul class="list">
            <li><a  href="#home">Search Buses</a></li>
            <li><a href="#news">Print /Cancel Ticket</a></li>
            <li><a href="#contact">Contact</a></li>
                       
        </ul>
         <div class="sd" >
           
            <asp:TextBox ID="source" placeholder="Source" runat="server" ToolTip="source"  ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Source is required" ControlToValidate="source" ToolTip="Source is required" BackColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <br />
            <asp:TextBox ID="destination" placeholder="Desination" runat="server" ToolTip="Destination" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Destination is required" ControlToValidate="destination" BackColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
           
            <asp:TextBox ID="calendar" runat="server" MaxLength="10" Height="45px" Width="181px" placeholder="Select journey date"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Select a valid date" ControlToValidate="calendar" BackColor="Red" ></asp:RequiredFieldValidator>
            <ajaxToolkit:CalendarExtender ID="calendar_CalendarExtender" runat="server" BehaviorID="calendar_CalendarExtender" TargetControlID="calendar" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="Red" Font-Bold="True" Font-Italic="True" style="margin-left: 0px" Text="Search Buses" Width="135px" Height="36px" OnClick="find" />
            
       </div>

    </form>
</body>
</html>
