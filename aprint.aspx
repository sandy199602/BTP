<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aprint.aspx.cs" Inherits="aprint" %>

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
              
           
          <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
             
          
         </h3>
              
           
       </div>
       </div>
        <br />
          <ul class="list">
            <li><a  href="afterlogin.aspx">Search Buses</a></li>
            <li><a href="printticket.aspx">Print Ticket</a></li>
            <li><a href="CancelTicket.aspx">Cancel Ticket</a></li>
              <li><a href="feedback.aspx">Feedback</a></li>
            <li><a href="acontact.aspx">Contact</a></li>
                       
        </ul>
        <fieldset>
             <legend>Passenger deatils</legend>
         <div class="design">
            
            <div >
                <asp:Literal ID="Literal1" runat="server" Text="Name"></asp:Literal>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
                <br />
                <br />
                 <asp:Literal ID="Label1" runat="server" Text="Age"></asp:Literal>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="age" runat="server" placeholder="Age"></asp:TextBox>
                <br />
                <br />
                <asp:Literal ID="Label2" runat="server" Text="Gender"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Width="122px">
                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                <br />
                <br />
                <asp:Literal ID="Label3" runat="server" Text="Mobile"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="mobile" runat="server" ></asp:TextBox>
                <br />
                <br />
                <asp:Literal ID="seats" runat="server" Text="seat number"></asp:Literal>
                <asp:TextBox ID="seat" runat="server" ReadOnly="True" ></asp:TextBox>
                 <br />
                <br />
                <asp:Literal ID="Literal2" runat="server" Text="Amount">Amount-</asp:Literal>                
                <asp:label ID="label" runat="server" ></asp:label>
                <br />
                <br />
                <asp:Literal ID="Label4" runat="server" Text="Number of tickets">Number of tickets:-</asp:Literal>                
                <asp:Literal ID="tickets" runat="server" ></asp:Literal>
                
                <br />
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="trial" runat="server" Text="Book" OnClick="book" />
            </div>
        </div>
            <//fieldset>

   
    </form>
</body>
</html>
