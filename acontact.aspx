<%@ Page Language="C#" AutoEventWireup="true" CodeFile="acontact.aspx.cs" Inherits="acontact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <style>
        .panel{
            height:0px;
            padding:10px;
            
        }

            
       
        </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <img src="banner12.jpg" style=" height:100px; width: 230px;" alt="Bus logo" >
            <img src="Capture.PNG" alt="Bus logo" style="height: 67px; background-color:yellow;" >
         <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True"></asp:ScriptManager>
            
   <div style="height:46px">

       <div class="panel">
            
          <h3 style="width: 564px">Welcome 
           <asp:Label ID="message" runat="server" Text="Label"></asp:Label>
              
           
          <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" ValidationGroup="logout" />
             
          
         </h3>
              
           
       </div>
       </div>
        <br />
          <ul class="list">
            <li><a  href="afterlogin.aspx">Search Buses</a></li>
            <li><a href="#rfjhkh">Print Ticket</a></li>
            <li><a href="#cancel">Cancel Ticket</a></li>
              <li><a href="feedback.aspx">Feedback</a></li>
            <li><a href="acontact.aspx">Contact</a></li>
                       
        </ul>
              
        <fieldset>
            <legend>Contact us</legend>
            Please leave your query at <b>onlinebusseat@gmail.com</b>.We will get back to you as soon as possible.
        </fieldset>
        </form>
   
</body>
</html>
