<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abook.aspx.cs" Inherits="abook" %>

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
    </form>
</body>
</html>
