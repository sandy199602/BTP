<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aticket.aspx.cs" Inherits="aticket" %>

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
            <li><a href="#news">Print Ticket</a></li>
            <li><a href="#cancel">Cancel Ticket</a></li>
              <li><a href="feedback.aspx">Feedback</a>Feedback</li>
            <li><a href="acontact.aspx">Contact</a></li>
                       
        </ul>
        
  
          <fieldset>
             <legend>Ticket</legend>
          <div>
              <table>
                  <tr>
                      <td class="auto-style1">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Literal ID="literal9" Text="PNR" runat="server"> </asp:Literal>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;
                              <asp:TextBox ID="pnr" runat="server" ReadOnly="True"></asp:TextBox>
                         
                      </td>
                      <td>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Literal ID="literal10" Text="Bus No" runat="server"></asp:Literal>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;<asp:TextBox ID="busno" runat="server" ReadOnly="True"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Literal ID="literal1" Text="Passenger Name" runat="server"> </asp:Literal>
                              &nbsp;&nbsp;
                              <asp:TextBox ID="pdetails" runat="server" ReadOnly="True"></asp:TextBox>
                         
                      </td>
                      <td>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Literal ID="literal2" Text="Date of Journey" runat="server"></asp:Literal>
                          &nbsp;&nbsp;<asp:TextBox ID="doj" runat="server" ReadOnly="True"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Literal ID="literal3" runat="server" Text="Number of Seats "></asp:Literal>
                          &nbsp;
                          <asp:TextBox ID="seats" runat="server" ReadOnly="True" ></asp:TextBox>
                      </td>
                                 
                      <td>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="literal4" runat="server" Text="Seat Number"></asp:Literal>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="seatno" runat="server" ReadOnly="True"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Literal ID="literal5" runat="server" Text="Source"></asp:Literal>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="source1" runat="server" ReadOnly="True" ></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Literal ID="literal6" runat="server" Text="Destination"></asp:Literal>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="destination1" runat="server" ReadOnly="True" ></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Literal ID="literal7" runat="server" Text="Deperature_Time"></asp:Literal>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="dtime" runat="server" ReadOnly="True" ></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Literal ID="literal8" runat="server" Text="Arrival_Time"></asp:Literal>
                          &nbsp;&nbsp; &nbsp;&nbsp;
                          <asp:TextBox ID="atime" runat="server" ReadOnly="True" ></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Literal ID="literal12" Text="Amount to be paid:-" runat="server"></asp:Literal>
                          <asp:Label ID="label1" runat="server"></asp:Label>

                      </td>
                  </tr>
                  
                                              
              </table>
          </div>
              </fieldset>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="print" runat="server" Text="Print" OnClientClick="javascript:window.print();" />
    </form>
</body>
</html>
