<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afterlogin.aspx.cs" Inherits="afterlogin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
            <li><a  href="#home">Search Buses</a></li>
            <li><a href="#news">Print /Cancel Ticket</a></li>
            <li><a href="#contact">Contact</a></li>
                       
        </ul>
         <div class="sd" >
           
            <asp:TextBox ID="source" placeholder="Source" runat="server"  Height="45px" Width="290px" Font-Size="X-Large" ></asp:TextBox>
                     <ajaxToolkit:AutoCompleteExtender ID="auto_AutoCompleteExtender" ServiceMethod="tosource" runat="server" BehaviorID="auto_AutoCompleteExtender" CompletionInterval="100" DelimiterCharacters="" MinimumPrefixLength="1"  TargetControlID="source">
        </ajaxToolkit:AutoCompleteExtender>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Source is required" ControlToValidate="source" ToolTip="Source is required" BackColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <br />
            <asp:TextBox ID="destination" placeholder="Desination" runat="server" ToolTip="destination" Font-Size="X-Large" ></asp:TextBox>
             
            
             
             <ajaxToolkit:AutoCompleteExtender ID="destination_AutoCompleteExtender" ServiceMethod="todestination" runat="server" BehaviorID="destination_AutoCompleteExtender"  TargetControlID="destination" CompletionInterval="100" MinimumPrefixLength="1">
             </ajaxToolkit:AutoCompleteExtender>
             
            
             
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Destination is required" ControlToValidate="destination" BackColor="Red"></asp:RequiredFieldValidator>
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
