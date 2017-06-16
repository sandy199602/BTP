using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rate"] != null)
        {
            int a = int.Parse(Session["counter"].ToString());
            int b = int.Parse(Session["rate"].ToString());
            int c = a * b;
            label.Text = c.ToString();
        }
        seat.Text = Session["s"].ToString();
        tickets.Text = Session["counter"].ToString();
        /* if (Session["value1"] != null)
             Response.Write(Session["value1"].ToString());
         if (Session["value2"] != null)
             Response.Write(Session["value2"].ToString());
         if (Session["value3"] != null)
             Response.Write(Session["value3"].ToString());
         if (Session["value4"] != null)
             Response.Write(Session["value4"].ToString());
         if (Session["value5"] != null)
             Response.Write(Session["value5"].ToString());
         if (Session["value6"] != null)
             Response.Write(Session["value6"].ToString());
         if (Session["value7"] != null)
             Response.Write(Session["value7"].ToString());
         if (Session["value8"] != null)
             Response.Write(Session["value8"].ToString());
         if (Session["value9"] != null)
             Response.Write(Session["value9"].ToString());
         if (Session["value10"] != null)
             Response.Write(Session["value10"].ToString());
         if (Session["value11"] != null)
             Response.Write(Session["value11"].ToString());
         if (Session["value12"] != null)
             Response.Write(Session["value12"].ToString());
         if (Session["value13"] != null)
             Response.Write(Session["value13"].ToString());
         if (Session["value14"] != null)
             Response.Write(Session["value14"].ToString());
         if (Session["value15"] != null)
             Response.Write(Session["value15"].ToString());
         if (Session["value16"] != null)
             Response.Write(Session["value16"].ToString());
         if (Session["value17"] != null)
             Response.Write(Session["value17"].ToString());
         if (Session["value18"] != null)
             Response.Write(Session["value18"].ToString());
         if (Session["value19"] != null)
             Response.Write(Session["value19"].ToString());
         if (Session["value20"] != null)
             Response.Write(Session["value20"].ToString());
         if (Session["value21"] != null)
             Response.Write(Session["value21"].ToString());
         if (Session["value22"] != null)
             Response.Write(Session["value22"].ToString());
         if (Session["value23"] != null)
             Response.Write(Session["value23"].ToString());
         if (Session["value24"] != null)
             Response.Write(Session["value24"].ToString());
         if (Session["value25"] != null)
             Response.Write(Session["value25"].ToString());
         if (Session["value26"] != null)
             Response.Write(Session["value26"].ToString());
         if (Session["value27"] != null)
             Response.Write(Session["value27"].ToString());
         if (Session["value28"] != null)
             Response.Write(Session["value28"].ToString());
         if (Session["value29"] != null)
             Response.Write(Session["value29"].ToString());
         if (Session["value30"] != null)
             Response.Write(Session["value30"].ToString());
         if (Session["value31"] != null)
             Response.Write(Session["value31"].ToString());
         if (Session["value32"] != null)
             Response.Write(Session["value32"].ToString());
         if (Session["value33"] != null)
             Response.Write(Session["value33"].ToString());
         if (Session["value34"] != null)
             Response.Write(Session["value34"].ToString());
         if (Session["value35"] != null)
             Response.Write(Session["value35"].ToString());
         if (Session["value36"] != null)
             Response.Write(Session["value36"].ToString());
         if (Session["value37"] != null)
             Response.Write(Session["value37"].ToString());
         if (Session["value38"] != null)
             Response.Write(Session["value38"].ToString());
         if (Session["value39"] != null)
             Response.Write(Session["value39"].ToString());
         if (Session["value40"] != null)
             Response.Write(Session["value40"].ToString());
         if (Session["value41"] != null)
             Response.Write(Session["value41"].ToString());
         */
        if (Session["buscode"] != null)
            Response.Write(Session["buscode"].ToString());
        if (Session["date"] != null)
            Response.Write(Session["date"].ToString());

    }

    protected void book(object sender, EventArgs e)
    {
        try
        {
            int a = int.Parse(tickets.Text);
            int b = int.Parse(Session["rate"].ToString());
            int c = a * b;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            //string chkUser = string.Format("SELECT COUNT(*) FROM customer WHERE UserId = '{0}'", email.Text);
            // SqlCommand chk = new SqlCommand(chkUser, con);
            // int duplicate = chk.ExecuteScalar();
            string query = "insert into ticket ([passenger name],age,mobile,seats,gender,date,source,destination,buscode,rate)values('"+name.Text+"','"+age.Text+"','"+mobile.Text+"','"+seat.Text+"','"+DropDownList1.SelectedItem.Value+"','"+Session["date"]+"','"+Session["source"]+"','"+Session["destination"]+"','"+Session["buscode"]+ "','"+c.ToString()+"')";

            string cmdtext = "update status set s1='"+Session["value1"].ToString()+"',s2='"+Session["value2"].ToString()+"',s3='"+Session["value3"].ToString()+"',s4='"+Session["value4"].ToString()+"',s5='"+Session["value5"].ToString()+"',s6='"+Session["value6"].ToString()+"',s7='"+Session["value7"].ToString()+"',s8='"+Session["value8"].ToString()+"',s9='"+Session["value9"].ToString()+"',s10='"+Session["value10"].ToString()+"',s11='"+Session["value11"].ToString()+"',s12='"+Session["value12"].ToString()+"',s13='"+Session["value13"].ToString()+"',s14='"+Session["value14"].ToString()+"',s15='"+Session["value15"].ToString()+"',s16='"+Session["value16"].ToString()+"',s17='"+Session["value17"].ToString()+"',s18='"+Session["value18"].ToString()+"',s19='"+Session["value19"].ToString()+"',s20='"+Session["value20"].ToString()+"',s21='"+Session["value21"].ToString()+"',s22='"+Session["value22"].ToString()+"',s23='"+Session["value23"].ToString()+ "',s24='"+Session["value24"].ToString()+"',s25='"+Session["value25"].ToString()+"',s26='"+Session["value26"].ToString()+"',s27='"+Session["value27"].ToString()+"',s28='"+Session["value28"].ToString()+"',s29='"+Session["value29"].ToString()+"',s30='"+Session["value30"].ToString()+"',s31='"+Session["value31"].ToString()+"',s32='"+Session["value32"].ToString()+"',s33='"+Session["value33"].ToString()+"',s34='"+Session["value34"].ToString()+"',s35='"+Session["value35"].ToString()+"',s36='"+Session["value36"].ToString()+"',s37='"+Session["value37"].ToString()+"',s38='"+Session["value38"].ToString()+"',s39='"+Session["value39"].ToString()+"',s40='"+Session["value40"].ToString()+"',s41='"+Session["value41"].ToString()+"' where Buscode='"+Session["buscode"].ToString()+"'and Date='"+Session["date"].ToString()+"'";
            SqlCommand cmd = new SqlCommand(cmdtext, con);
            int no = cmd.ExecuteNonQuery();
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            Session["s"] = seat.Text;
            Session["seats"] = tickets.Text;
           
            label.Text = c.ToString();

            Session["Arrival_Time"] = Session["Arrival_Time"];
            Session["deperaturetime"] = Session["deperaturetime"];
            Session["rate"] = c;
            Session["name"] = name.Text;
            Session["buscode"] = Session["buscode"];
            Session["date"] = Session["date"];
            Session["source"] = Session["source"];
            Session["destination"] = Session["destination"];
            

            if (no > 0)
            {
                Response.Redirect("Ticket.aspx");


            }
            else
                Response.Write("<script>alert('there was an error in booking your seats');</script>");
        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
        }
    }
    protected void loginwindow(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;");


            con.Open();


            SqlCommand cmd = new SqlCommand("select COUNT(*)FROM customer WHERE email='" + login.Text + "' and password='" + password1.Text + "'");


            cmd.Connection = con;


            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());


            if (OBJ > 0)


            {

                Session["username"] = login.Text;
                Response.Redirect("afterlogin.aspx");


            }
            else
            {
                error.Text = "password is incorrect";
            }


        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
        }

    }

    protected void sendmail(object sender, EventArgs e)
    {

    }

    protected void signup(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            //string chkUser = string.Format("SELECT COUNT(*) FROM customer WHERE UserId = '{0}'", email.Text);
            // SqlCommand chk = new SqlCommand(chkUser, con);
            // int duplicate = chk.ExecuteScalar();

            string cmdtext = "INSERT INTO customer Values('" + email.Text + "', '" + password.Text + "','" + firstname.Text + "', '" + lastname.Text + "', '" + mobileno.Text + "')";
            SqlCommand cmd = new SqlCommand(cmdtext, con);
            int no = cmd.ExecuteNonQuery();

            if (no > 0)
            {
                Response.Write("<script>alert('registrtaion Succssfull');</script>");
                SendEmail();

            }
            else
                Response.Write("<script>alert('registrtaion Succssfull');</script>");
        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
        }
    }
    public void SendEmail()
    {


        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        string emailadd = email.Text;

        message.From = new MailAddress("onlinebusseat@gmail.com");
        message.To.Add(emailadd);
        message.Subject = "Welcome";
        message.Body = "Welcome to the chawal and chawla buses";
        message.IsBodyHtml = true;
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = new System.Net.NetworkCredential("onlinebusseat@gmail.com", "btechproject");
        client.Send(message);
        Response.Redirect("#message_form");

    }

  
}