using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    public void saveTODB()
    {
        try {
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
        catch( SqlException ee)
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
    protected void sendmail(object sender,EventArgs e)
    {

    }

    protected void loginwindow(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            string chkUser = string.Format("select count(*) from [customer] where email='{0}'", email.Text);
            string query = string.Format("select count(*) from [customer] where password='{0}'",password.Text);
           

            // query to check for duplicate username

            SqlCommand cmmd = new SqlCommand(chkUser,con);
            int count = (int)cmmd.ExecuteScalar();
            if (count == 0)
                error.Text = "User does not found please resgister and then login....";
            else
            {
                SqlCommand chkpas = new SqlCommand(query, con);
                string pass = chkpas.ExecuteScalar().ToString();
                if (pass == password1.Text)
                {
                    Session["username"] = login.Text;
                    Response.Redirect("afterlogin.aspx");
                  
                }
                else
                {
                    error.Text = "password is incorrect";
                }
            }

        }
        catch(SqlException ee)
        {
            Response.Write(ee.Message);
        }
       
    }






    protected void search(object sender, EventArgs e)
    {

    }
}