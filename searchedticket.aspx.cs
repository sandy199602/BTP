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

public partial class searchedticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { if (Session["pnr"] != null)
            pnr.Text = Session["pnr"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        con.Open();
        //string chkUser = string.Format("SELECT COUNT(*) FROM customer WHERE UserId = '{0}'", email.Text);
        // SqlCommand chk = new SqlCommand(chkUser, con);
        // int duplicate = chk.ExecuteScalar();
        SqlCommand cmd = new SqlCommand("select * from Ticket where pnr='" + pnr.Text.Trim() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {           
            pdetails.Text = dr.GetString(1);
            busno.Text = dr.GetString(9);
            doj.Text = dr.GetString(6);
            seatno.Text = dr.GetString(5);
            source1.Text = dr.GetString(7);
            destination1.Text = dr.GetString(8);
            label1.Text = dr.GetString(10);
        }
        dr.Close();
        String query = "select * from Bus where Buscode='" + busno.Text.Trim() + "'";
        cmd.CommandText = query;
      SqlDataReader dr1 = cmd.ExecuteReader();
        while (dr1.Read())
        {
            dtime.Text = dr1.GetString(5);
            atime.Text = dr1.GetString(6);

        }
        dr1.Close();
    }
    public void saveTODB()
    {//learning things
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

    protected void signup(object sender, EventArgs e)
    {
        saveTODB();
    }
    protected void sendmail(object sender, EventArgs e)
    {

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






    protected void book(object sender, EventArgs e)
    {
  
        
          
        
}
}