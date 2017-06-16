<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <title></title>
    <style>
        .admin
        {
               width: 900px;
                  height: 250px;
                  

                 position: absolute;
                  top:0;
                bottom: 0;
                 left: 0;
                  right: 0;
    
                  margin: auto;
        }
    </style>
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
            <li><a  href="Customer.aspx">Customer</a></li>
            <li><a href="addbus.aspx">Add/View Bus</a></li>
            <li><a href="Route.aspx">Route</a></li>
              <li><a href="status.aspx">Status</a></li>
            <li><a href="Adminfeedback.aspx">Feedback</a></li>
        </ul>
    <div>
      <p class="description">Bus Reservation System helps you schedule bus routes and tours with ease. The system allows you to plan, schedule and manage unlimited routes with start, end and stop destinations, create a route timetable, print bus schedules, seat and passenger lists.Add various bus types, show seats number and a graphic seat map.Add multiple bus routes with start, end and intermediate stop locations.Review and manage daily schedules, check number of tickets sold.View seats lists - with available/booked seats, and detailed passengers lists.See a route timetable with the departure times of all buses of a specific route.</p>
    </div>
     
    </form>
</body>
</html>
