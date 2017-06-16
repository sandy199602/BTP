<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbus.aspx.cs" Inherits="addbus" %>

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
            <li><a  href="admin.aspx">Home</a></li>
            <li><a  href="Customer.aspx">Customer</a></li>
            <li><a href="addbus.aspx">Add/View Bus</a></li>
            <li><a href="Route.aspx">Route</a></li>
              <li><a href="status.aspx">Status</a></li>
            <li><a href="Adminfeedback.aspx">Feedback</a></li>
        </ul>
    <div>
       
    </div>
        <fieldset>
            <legend>Add Bus</legend>
            <asp:label ID="Buscode" Text="Buscode" runat="server"></asp:label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Placeholder="Buscode"></asp:TextBox>
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            <asp:Label ID="Type" runat="server" Text="Type"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Placeholder="Type"></asp:TextBox>
            <br />
            <asp:Label ID="Source" runat="server" Text="Source"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Placeholder="Source"></asp:TextBox>
         
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
            <asp:Label ID="Destination" runat="server" Text="Destination"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Placeholder="Destination"></asp:TextBox>
            <br />
            <asp:Label ID="Seats" runat="server" Text="Seats"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Placeholder="Seats"></asp:TextBox>
         
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
            <asp:Label ID="Deperaturetime" runat="server" Text="Deperature_Time"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Placeholder="Deperature_Time"></asp:TextBox>
            <br />
            <asp:Label ID="Arrival_Time" runat="server" Text="Arrival_Time"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Placeholder="Arrival_Time"></asp:TextBox>
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            <asp:Label ID="Rate" runat="server" Text="Rate"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox8" runat="server" placeholder="Rate"></asp:TextBox>
            <br />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="AddBuses" runat="server" Text="Add Bus" OnClick="Add_Bus" />
        </fieldset>
        <fieldset>
            <legend>View</legend>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Buscode,Source,Destination,Deperature_Time,Arrival_Time" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Buscode" HeaderText="Buscode" ReadOnly="True" SortExpression="Buscode" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Source" HeaderText="Source" ReadOnly="True" SortExpression="Source" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" ReadOnly="True" SortExpression="Destination" />
                    <asp:BoundField DataField="Seats" HeaderText="Seats" SortExpression="Seats" />
                    <asp:BoundField DataField="Deperature_Time" HeaderText="Deperature_Time" ReadOnly="True" SortExpression="Deperature_Time" />
                    <asp:BoundField DataField="Arrival_Time" HeaderText="Arrival_Time" ReadOnly="True" SortExpression="Arrival_Time" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [Bus] WHERE [Buscode] = @Buscode AND [Source] = @Source AND [Destination] = @Destination" InsertCommand="INSERT INTO [Bus] ([Buscode], [Type], [Source], [Destination], [Seats], [Deperature_Time], [Arrival_Time], [Rate]) VALUES (@Buscode, @Type, @Source, @Destination, @Seats, @Deperature_Time, @Arrival_Time, @Rate)" SelectCommand="SELECT * FROM [Bus]" UpdateCommand="UPDATE [Bus] SET [Type] = @Type, [Seats] = @Seats, [Deperature_Time] = @Deperature_Time, [Arrival_Time] = @Arrival_Time, [Rate] = @Rate WHERE [Buscode] = @Buscode AND [Source] = @Source AND [Destination] = @Destination">
                <DeleteParameters>
                    <asp:Parameter Name="Buscode" Type="String" />
                    <asp:Parameter Name="Source" Type="String" />
                    <asp:Parameter Name="Destination" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Buscode" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Source" Type="String" />
                    <asp:Parameter Name="Destination" Type="String" />
                    <asp:Parameter Name="Seats" Type="String" />
                    <asp:Parameter Name="Deperature_Time" Type="String" />
                    <asp:Parameter Name="Arrival_Time" Type="String" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Seats" Type="String" />
                    <asp:Parameter Name="Deperature_Time" Type="String" />
                    <asp:Parameter Name="Arrival_Time" Type="String" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="Buscode" Type="String" />
                    <asp:Parameter Name="Source" Type="String" />
                    <asp:Parameter Name="Destination" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </fieldset>
    </form>
</body>
</html>
