<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <style>
        .panel{
            height:0px;
            padding:10px;
            
        }
        .feed{
            padding-top:200px;
            margin-top:40px;
                 width: 100px;
                  height: 250px;
                  

                 position: absolute;
                  top:0;
                bottom: 0;
                 left: 0;
                  right: 0;
    
                  margin: auto;

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
            <li><a href="printticket.aspx">Print Ticket</a></li>
            <li><a href="CancelTicket.aspx">Cancel Ticket</a></li>
              
            <li><a href="acontact.aspx">Contact</a></li>
                       
        </ul>
        <div class="feed">
        <asp:Label ID="thead" runat="server" Text="Title"></asp:Label>
        <asp:TextBox ID="title" runat="server" placeholder="Title" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
        
            <asp:TextBox ID="feedback_content" runat="server"  Placeholder="Describe your issue or share your ideas" TextMode="MultiLine" Width="250" Height="140"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="submit" Height="38px" Width="161px" />

            </div>
    </form>
</body>
</html>
