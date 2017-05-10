<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <title>Search Bus Ticket</title>
   
    <style type="text/css">
        .bdetails {
            height: 449px;
            margin-left: 226px;
            width: 556px;
        }
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
       .searchbar{
            list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: tan;
    height: 42px;
    width: auto;
       }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
        
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
            <li><a  href="#home">Bus Ticket</a></li>
            <li><a href="#news">Print /Cancel Ticket</a></li>
            <li><a href="#contact">Contact</a></li>
                       
        </ul>
            <br />
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

        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
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
       
        <asp:UpdatePanel ID="Updatepanel42" runat="server">
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
        <asp:UpdatePanel ID="Updatepanel43" runat="server">
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
    
       
    
    <div class="details">
        <div class="pdetails">

        </div>
        <div class="bdetails">
            <table>
                     <tr>
                            <td>
                                  <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                        <ContentTemplate>
                                                 <asp:ImageButton ID="ImageButton1" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton1_Click" />
                                                 &nbsp;&nbsp;&nbsp;
                                        </ContentTemplate>
                                 </asp:UpdatePanel>
                           </td>

                          <td>
                                 <asp:UpdatePanel ID="UpdatePanel5" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                       <ContentTemplate>
                                                  <asp:ImageButton ID="ImageButton5" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton5_Click" Height="33px" />
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       </ContentTemplate>
                              </asp:UpdatePanel>
                         </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel9" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                    <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton9" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton9_Click" />
                                          &nbsp;&nbsp;
                                    </ContentTemplate>
                               </asp:UpdatePanel>
                       </td>
                       <td>
                           <asp:UpdatePanel ID="UpdatePanel13" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                 <ContentTemplate>
                                    <asp:ImageButton ID="ImageButton13" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton13_Click" />
                                     &nbsp;&nbsp;
                                 </ContentTemplate>
                           </asp:UpdatePanel>
                    </td>
                        <td>
                              <asp:UpdatePanel ID="UpdatePanel17" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                      <ContentTemplate>
                                             <asp:ImageButton ID="ImageButton17" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton17_Click" />
                                             &nbsp;&nbsp;
                                       </ContentTemplate>
                             </asp:UpdatePanel>
                      </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel21" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                               <ContentTemplate>
                                     <asp:ImageButton ID="ImageButton21" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton21_Click" />
                                     &nbsp;&nbsp;
                              </ContentTemplate>
                              </asp:UpdatePanel>
                     </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel25" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                  <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton25" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton25_Click" />
                                          &nbsp;&nbsp;
                               </ContentTemplate>
                              </asp:UpdatePanel>
                       </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel29" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                <ContentTemplate>
                                      <asp:ImageButton ID="ImageButton29" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton29_Click" />
                                      &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                           <asp:UpdatePanel ID="UpdatePanel33" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                             <ContentTemplate>
                                  <asp:ImageButton ID="ImageButton33" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton33_Click" Height="33px" />
                                  &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel37" runat="server"  OnDataBinding="Page_Load" UpdateMode="Conditional">
                            <ContentTemplate>
                              <asp:ImageButton ID="ImageButton37" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton37_Click" />
                                &nbsp;&nbsp;
                            </ContentTemplate>

                        </asp:UpdatePanel>

                    </td>
                </tr>
                </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 17&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 21&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 29&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 33&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 37<br />
            <br />
               <table>
                <tr>
                            <td>
                                  <asp:UpdatePanel ID="UpdatePanel2" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                        <ContentTemplate>
                                                 <asp:ImageButton ID="ImageButton2" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton2_Click" />
                                                 &nbsp;&nbsp;&nbsp;
                                        </ContentTemplate>
                                 </asp:UpdatePanel>
                           </td>

                          <td>
                                 <asp:UpdatePanel ID="UpdatePanel6" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                       <ContentTemplate>
                                                  <asp:ImageButton ID="ImageButton6" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton6_Click" Height="33px" />
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       </ContentTemplate>
                              </asp:UpdatePanel>
                         </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel10" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                    <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton10" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton10_Click" />
                                          &nbsp;&nbsp;
                                    </ContentTemplate>
                               </asp:UpdatePanel>
                       </td>
                       <td>
                           <asp:UpdatePanel ID="UpdatePanel14" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                 <ContentTemplate>
                                    <asp:ImageButton ID="ImageButton14" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton14_Click" />
                                     &nbsp;&nbsp;
                                 </ContentTemplate>
                           </asp:UpdatePanel>
                    </td>
                        <td>
                              <asp:UpdatePanel ID="UpdatePanel18" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                      <ContentTemplate>
                                             <asp:ImageButton ID="ImageButton18" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton18_Click" />
                                             &nbsp;&nbsp;
                                       </ContentTemplate>
                             </asp:UpdatePanel>
                      </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel22" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                               <ContentTemplate>
                                     <asp:ImageButton ID="ImageButton22" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton22_Click" />
                                     &nbsp;&nbsp;
                              </ContentTemplate>
                              </asp:UpdatePanel>
                     </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel26" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                  <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton26" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton26_Click" />
                                          &nbsp;&nbsp;
                               </ContentTemplate>
                              </asp:UpdatePanel>
                       </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel30" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                <ContentTemplate>
                                      <asp:ImageButton ID="ImageButton30" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton30_Click" />
                                      &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                           <asp:UpdatePanel ID="UpdatePanel34" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                             <ContentTemplate>
                                  <asp:ImageButton ID="ImageButton34" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton34_Click" />
                                  &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel38" runat="server">
                            <ContentTemplate>
                              <asp:ImageButton ID="ImageButton38" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton38_Click" />
                                &nbsp;&nbsp;
                            </ContentTemplate>

                        </asp:UpdatePanel>

                    </td>
                </tr>
                   </table>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 18&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 22&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 26&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 38<br />
            <br />
            <table>
                <tr>
                    <td>
                         <asp:UpdatePanel ID="UpdatePanel39" runat="server">
                            <ContentTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:ImageButton ID="ImageButton39" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton39_Click" />
                                &nbsp;&nbsp;
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>


             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 39<br />
            <br />
                <table>
                <tr>
                            <td>
                                  <asp:UpdatePanel ID="UpdatePanel3" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                        <ContentTemplate>
                                                 <asp:ImageButton ID="ImageButton3" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton3_Click" />
                                                 &nbsp;&nbsp;&nbsp;
                                        </ContentTemplate>
                                 </asp:UpdatePanel>
                           </td>

                          <td>
                                 <asp:UpdatePanel ID="UpdatePanel7" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                       <ContentTemplate>
                                                  <asp:ImageButton ID="ImageButton7" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton7_Click" Height="33px" />
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       </ContentTemplate>
                              </asp:UpdatePanel>
                         </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel11" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                    <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton11" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton11_Click" />
                                          &nbsp;&nbsp;
                                    </ContentTemplate>
                               </asp:UpdatePanel>
                       </td>
                       <td>
                           <asp:UpdatePanel ID="UpdatePanel15" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                 <ContentTemplate>
                                    <asp:ImageButton ID="ImageButton15" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton15_Click" />
                                     &nbsp;&nbsp;
                                 </ContentTemplate>
                           </asp:UpdatePanel>
                    </td>
                        <td>
                              <asp:UpdatePanel ID="UpdatePanel19" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                      <ContentTemplate>
                                             <asp:ImageButton ID="ImageButton19" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton19_Click" />
                                             &nbsp;&nbsp;
                                       </ContentTemplate>
                             </asp:UpdatePanel>
                      </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel23" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                               <ContentTemplate>
                                     <asp:ImageButton ID="ImageButton23" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton23_Click" />
                                     &nbsp;&nbsp;
                              </ContentTemplate>
                              </asp:UpdatePanel>
                     </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel27" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                  <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton27" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton27_Click" />
                                          &nbsp;&nbsp;
                               </ContentTemplate>
                              </asp:UpdatePanel>
                       </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel31" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                <ContentTemplate>
                                      <asp:ImageButton ID="ImageButton31" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton31_Click" />
                                      &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                           <asp:UpdatePanel ID="UpdatePanel35" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                             <ContentTemplate>
                                  <asp:ImageButton ID="ImageButton35" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton35_Click" />
                                  &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel40" runat="server">
                            <ContentTemplate>
                              <asp:ImageButton ID="ImageButton40" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton40_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </ContentTemplate>

                        </asp:UpdatePanel>

                    </td>
                </tr>
                    </table>
             &nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 19&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 23&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 27&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;31&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 35&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;40&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
            <br />
                <table>
                <tr>
                            <td>
                                  <asp:UpdatePanel ID="UpdatePanel4" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                        <ContentTemplate>
                                                 <asp:ImageButton ID="ImageButton4" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton4_Click" />
                                                 &nbsp;&nbsp;&nbsp;
                                        </ContentTemplate>
                                 </asp:UpdatePanel>
                           </td>

                          <td>
                                 <asp:UpdatePanel ID="UpdatePanel8" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                       <ContentTemplate>
                                                  <asp:ImageButton ID="ImageButton8" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton8_Click" Height="33px" />
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       </ContentTemplate>
                              </asp:UpdatePanel>
                         </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel12" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                    <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton12" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton12_Click" />
                                          &nbsp;&nbsp;
                                    </ContentTemplate>
                               </asp:UpdatePanel>
                       </td>
                       <td>
                           <asp:UpdatePanel ID="UpdatePanel16" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                 <ContentTemplate>
                                    <asp:ImageButton ID="ImageButton16" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton16_Click" />
                                     &nbsp;&nbsp;
                                 </ContentTemplate>
                           </asp:UpdatePanel>
                    </td>
                        <td>
                              <asp:UpdatePanel ID="UpdatePanel20" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                      <ContentTemplate>
                                             <asp:ImageButton ID="ImageButton20" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton20_Click" />
                                             &nbsp;&nbsp;
                                       </ContentTemplate>
                             </asp:UpdatePanel>
                      </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel24" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                               <ContentTemplate>
                                     <asp:ImageButton ID="ImageButton24" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton24_Click" />
                                     &nbsp;&nbsp;
                              </ContentTemplate>
                              </asp:UpdatePanel>
                     </td>
                      <td>
                             <asp:UpdatePanel ID="UpdatePanel28" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                  <ContentTemplate>
                                          <asp:ImageButton ID="ImageButton28" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton28_Click" />
                                          &nbsp;&nbsp;
                               </ContentTemplate>
                              </asp:UpdatePanel>
                       </td>
                         <td>
                              <asp:UpdatePanel ID="UpdatePanel32" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                                <ContentTemplate>
                                      <asp:ImageButton ID="ImageButton32" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton32_Click" />
                                      &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                           <asp:UpdatePanel ID="UpdatePanel36" runat="server" OnDataBinding="Page_Load" UpdateMode="Conditional">
                             <ContentTemplate>
                                  <asp:ImageButton ID="ImageButton36" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton36_Click" />
                                  &nbsp;&nbsp;
                             </ContentTemplate>
                              </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel41" runat="server">
                            <ContentTemplate>
                              <asp:ImageButton ID="ImageButton41" ImageUrl="~/available_seat_img.gif" runat="server"  OnClick="ImageButton141_Click" Height="33px" />
                                &nbsp;&nbsp;&nbsp;
                            </ContentTemplate>

                        </asp:UpdatePanel>

                    </td>
                </tr>
                    
                    </table>
            &nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 24&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 28&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 41&nbsp;&nbsp;&nbsp;&nbsp;<br />
            
            
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="avalibleimage" ImageUrl="~/available_seat_img.gif" runat="server" />
            <asp:label ID="avaliable" Text="Avaliable" runat="server" Font-Bold="True"></asp:label>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Image ID="unavaliableimage" ImageUrl="~/booked_seat_img.gif" runat="server" />
            <asp:Label ID="unavaliable" runat="server" Text="Unavaliable" Font-Bold="True"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="go" Text="Go" runat="server" OnClick="GO" Width="107px"/>
        </div>
         </div>
    </form>
</body>
</html>
