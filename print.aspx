<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Print</title>
     <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <style>
        .panel{
            height:1px;
            padding:10px;
        }
            .panel a#login_pop, .panel a#join_pop {
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
                -ms-border-radius: 10px;
                -o-border-radius: 10px;
                border-radius: 10px;
            width: 48px;
        }
        a#login_pop:hover, a#join_pop:hover {
            border-color: #31b2c3;
            background: #31b2c3;
        }
        .overlay {
            background-color: rgba(0,0,0,0.6);
            bottom: 0;
            cursor: default;
            left: 0;
            opacity: 0;
            position: fixed:right:0;
            top: 0;
            visibility: hidden;
            z-index: 1;
            -webkit-transition: opacity.5s;
            -moz-transition: opacity.5s;
            -ms-transition: opacity.5s;
            -o-transition: opacity.5s;
            transition: opacity.5s;
        }
        .overlat:target {
            visibility: visible;
            opacity: 1;
        }
        .popup h2{color:#07839f;line-height:1.8em}
        .popup{
            background-color:#fff;
            border:3px solid #fff;
            display:inline-block;
            left:50%;color:#666;
            opacity:0;
            padding:15px;
            position:fixed;
            text-align:justify;
            top:40%;
            visibility:hidden;
            z-index:10;
            width:350px;

            -webkit-transform:translate(-50%,-50%);
            -moz-transform:translate(-50%,-50%);
            -ms-transform:translate(-50%,-50%);
            -o-transform:translate(-50%,-50%);
            transform:translate(-50%,-50%);

            -webkit-border-radius:10px;
            -moz-border-radius:10px;
            -ms-border-radius:10px;
            -o-border-radius:10px;
            border-radius:10px;

            -webkit-box-shadow:0 1px 1px 2px rgba(0,0,0,0.4)inset;
            -moz-box-shadow:0 1px 1px 2px rgba(0,0,0,0.4)inset;
            -ms-box-shadow:0 1px 1px 2px rgba(0,0,0,0.4)inset;
            -o-box-shadow:0 1px 1px 2px rgba(0,0,0,0.4)inset;
            box-shadow:0 1px 1px 2px rgba(0,0,0,0.4)inset;

            -webkit-transition:opacity.5s,top.5s;
            -moz-transition:opacity.5s,top.5s;
            -ms-transition:opacity.5s,top.5s;
            -o-transition:opacity.5s,top.5s;
            transition:opacity.5s,top.5s;

        }

        .overlay:target + .popup {
            top: 50%;
            opacity: 1;
            visibility: visible;
        }
        .close{
            background-color:rgba(0,0,0,0.8);
            height:30px;
            line-height:30px;
            position:absolute;
            right:0;
            text-align:center;
            text-decoration:none;
            top:-15px;
            width:30px;

            -webkit-border-radius:15px;
            -moz-border-radius:15px;
            -ms-border-radius:15px;
            -o-border-radius:15px;
            border-radius:15px;
             
        }

  .close::before{
      color:rgba(255,255,255,0.9);
      content:"X";
      font-size:24px;
      text-shadow:0-1px rgba(0,0,0,0.9);


  }
      .close:hover{
          background-color:rgba(64,128,128,0.8);
      }  
      .popup p,.popup div{
          margin-bottom:10px;
      }
       popup label{display:inline-block;
                   text-align:left;
                   width:180px;

       }         
       .popup input[type:"text"],.popup input[type="password"]{
           margin:0;
           padding:4px;
           background:#d8f6fd;
       
           border:1px solid #66c8de;
           -moz-box-shadow:0 1px 1px #ddd inset, 0 1px 0 #fff;
           -webkit-box-shadow:0 1px 1px #ddd inset, 0 1px 0 #fff;
           box-shadow:0 1px 1px #ddd inset, 0 1px 0 #fff;
           -moz-border-radius:3px;
           -webkit-border-radius:3px;
           border-radius:3px;

           }
       .popup input[type="text"]:hover,.popup input[type="password"]:hover{
           background:#fff;
       }
       input[type=button]{
           cursor:pointer;
           font:bold 15px Arial,helvetica;
           color:#fafafa;
           text-transform:uppercase;
           background-color:#0483a0;
           background-image:-webkit-gradient(linear,left top,left bottom,from(#31b2c3),to(#0483a0));
           background-image:-webkit-linear-gradient(top,#31b2c3,#0483a0);
           background-image:-moz-linear-gradient(top,#31b2c3,#0483a0);
           background-image:-ms-linear-gradient(top,#31b2c3,#0483a0);
           background-image:-o-linear-gradient(top,#31b2c3,#0483a0);
           background-image:linear-gradient(top,#31b2c3,#0483a0);
           -moz-border-radius:3px;
           -webkit-border-radius:3px;
           border-radius:3px;
           padding:5px;
           text-shadow:0 1px 0 rgba(255,255,255,0.3)inset,0 1px 0 #fff;
           -moz-box-shadow:0 1px 0 rgba(255,255,255,0.3)inset,0 1px 0 #fff;
           -webkit-box-shadow:0 1px 0 rgba(255,255,255,0.3)inset,0 1px 0 #fff;
           box-shadow:0 1px 0 rgba(255,255,255,0.3)inset,0 1px 0 #fff;
       }
         .design{
            position: fixed;
  top: 35%;
  left: 49%;
  margin-top: -50px;
  margin-left: -100px;
        }
    </style>
    
    
    
</head>
<body>
    <form id="form2" runat="server">
        <img src="banner12.jpg" style=" height:100px; width: 230px;" alt="Bus logo" >
            <img src="Capture.PNG" alt="Bus logo" style="height: 67px; background-color:yellow;" >
        <div>
   <div style="height:46px">

       <div class="panel">
           <a href="#login_form" id="login_pop">LogIn</a>
           <a href="#join_form" id="join_pop">SignUp</a>
           <a href="#fgt_form" id="fgt_pop"></a>
           <a href="#message_form"  id="message_pop"></a>
           
       </div>
   </div>
        <ul class="list">
           <li><a  href="Default.aspx">Search Buses</a></li>
            <li><a href="printticket.aspx">Print Ticket</a></li>
            <li><a href="CancelTicket.aspx">Cancel Ticket</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
                       
        </ul>
            <!--popup message-->
            <a href="#x" class="overlay" id="message_form"></a>
    <div class="popup">
        <h2>Registration Successful. Please login to acctivate your Account.</h2>
          <a class="close" href="#close"></a> 
        </div>
    <!--popup login-->
    <a href="#x" class="overlay" id="login_form"></a>
    <div class="popup">
         <asp:Label ID="error" runat="server" Text=""></asp:Label>
        <h2>Welcom Guest!</h2>
        <p>Please enter your login and passsword here</p>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <label for="login">Login</label>
            <asp:TextBox placeholder="Username" ID="login" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf" runat="server" ControlToValidate="login" ErrorMessage="Enter Username" ValidationGroup="RegisterUserValidationGroup" ForeColor="#CC0000" ToolTip="Enter Username" Font-Size="Larger">*</asp:RequiredFieldValidator>  

        </div>
        <div>
            <label for="password">Password</label>
            <asp:TextBox placeholder="Password" ID="password1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf1" runat="server" ControlToValidate="password" ErrorMessage="Enter Password" ValidationGroup="RegisterUserVaidationGroup" ForeColor="#CC0000" ToolTip="EnterPassword">*</asp:RequiredFieldValidator>

        </div>
        <br />
       
        <asp:UpdatePanel ID="Updatepanel1" runat="server">
            <ContentTemplate>
                 <a href="#fgt_form" id="fgt_pop">Forgot password?</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
              
                <asp:Button ID="Button1" runat="server" Text="Log In" ValidationGroup="RegisterUserValidationGroup" OnClick="loginwindow" ></asp:Button>&nbsp; or&nbsp;<a href="#join_form" id="join_pop">Register</a>
                  <a class="close" href="#close"></a> 
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
            <!--popup forget paassword-->
            <a href="#X" class="overlay" id="fgt_form"></a>
    <div class="popup">
        <h2>Forget password</h2>
        <p>please enter your register email id></p>
        <div>
           
            <asp:TextBox placeholder="Email"  ID="fgtemail" runat="server" width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ValidationGroup="RegisterUserValidation" Text="*" Forecolor="#CC0000" Font-Size="Larger">*</asp:RequiredFieldValidator>
            <asp:Button Text="send" runat="server" OnClick="sendmail" />
              <a class="close" href="#close"></a> 
        </div>
        </div>
            
                

    <!--popup form#2-->
    <a href="#X" class="overlay" id="join_form"></a>
    <div class="popup">
        <h2>Sign Up</h2>
        <p>please enter your details here></p>
        <div>
            <label for="email">Login(Email)</label>
            <asp:TextBox placeholder="  Email" ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf2" runat="server" ControlToValidate="email" ValidationGroup="RegisterUserValidation" Text="*" Forecolor="#CC0000" Font-Size="Larger">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="pass">Password</label>
            <asp:TextBox placeholder="  Password" ID="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ValidationGroup="RegisterUserValidation" Text="*" Forecolor="#CC0000" Font-Size="Larger">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="firstname">First name</label>
            <asp:TextBox placeholder="  FirstName" ID="firstname" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ValidationGroup="RegisterUserValidation" Text="*" Forecolor="#CC0000" Font-Size="Larger">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="lastname">Last name</label>
            <asp:TextBox placeholder="  LastName" ID="lastname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ValidationGroup="RegisterUserValidation" Text="*" Forecolor="#CC0000" Font-Size="Larger">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="mobileno">Mobile No.</label>
            <asp:TextBox placeholder="  Mobile No." ID="mobileno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ValidationGroup="RegisterUserValidation" Text="*" Forecolor="#CC0000" Font-Size="Larger">*</asp:RequiredFieldValidator>
        </div>
        <asp:UpdatePanel ID="Updatepanel2" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label7" runat="server" ForeColor="#CC0000"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Sign UP" ValidationGroup="RegisterUserValidation" OnClick="signup"></asp:Button> or  <a href="#login_form" id="login_pop">Log In</a>
                               
                <br />
                <asp:Button ID="btn1" runat="server" Text="Close" PostBackUrl="~/Default2.aspx" Visible="false" />
            </ContentTemplate>
        </asp:UpdatePanel>
       <a class="close" href="#close"></a> 

        </div>
            </div>
        <div class="design">
            <h2>
               Enter The Coustomer Details
            </h2>
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
                <asp:TextBox ID="seat" runat="server" ></asp:TextBox>
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

   

    </form>
</body>
</html>
