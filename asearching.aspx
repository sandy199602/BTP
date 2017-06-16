<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asearching.aspx.cs" Inherits="asearching" %>

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
              <li><a href="feedback.aspx">Feedback</a></li>
            <li><a href="acontact.aspx">Contact</a></li>
        </ul>
    <div>
        <ul class="searchbar">
             <li>
             <asp:Label ID="Label1" runat="server" Text="Source:" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                 </li>
             <li>
                 &nbsp;<asp:Label ID="sourcecarry" runat="server"  Font-Size="X-Large"></asp:Label>

             </li>
             <li>
             <asp:Label ID="Label2" runat="server" Text="Destination:" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                 </li>
             <li>
                 <asp:Label ID="destinationcarry" runat="server"  Font-Size="X-Large"></asp:Label>
             </li>
             <li>
             <asp:Label ID="Label3" runat="server" Text="Date:" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
             </li>
             <li>
                 <asp:Label ID="calendercarry" runat="server"  Font-Size="X-Large"></asp:Label>
             </li>
             <li>
             </li>
         </ul>
        </div>
     
        <fieldset>
            <legend>Buses</legend>
           <asp:Label ID="Label4" runat="server" ></asp:Label>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Large" GridLines="Vertical" Width="471px" Height="241px" style="margin-left: 182px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <AlternatingRowStyle BackColor="Gainsboro" />
              <Columns >
                            <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="View Seat" ID="lnkSelect" runat="server" CommandName="Select" />
            </ItemTemplate>
        </asp:TemplateField>

                 </Columns>
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </fieldset>  
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
   
    </form>
</body>
</html>
