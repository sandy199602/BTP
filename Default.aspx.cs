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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        con.Open();
        string cmdtext = "INSERT INTO customer Values('" + email.Text + "', '" + password.Text + "','" + firstname.Text + "', '" + lastname.Text + "', '" + mobileno.Text + "')";
        SqlCommand cmd = new SqlCommand(cmdtext,con);
        int no = cmd.ExecuteNonQuery();
        if (no > 0)
        {
            SendEmail();
            Response.Write("<script>alert('Registration successful. Please Login')</script>");
        }
        else
            Response.Write("<script>alert('Registration Failed')</script>");
    }
    public void SendEmail()
    {

        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        string emailadd = email.Text;

        message.From = new MailAddress("sandeepkumarsingh1902@gmail.com");
        message.To.Add(emailadd);
        message.Subject = "welcom";
        message.Body = "welcome to the chawal and chawla buses";
        message.IsBodyHtml = true;
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = new System.Net.NetworkCredential("sandeepkumarsingh1902@gmail.com", "8116264387sa");
        client.Send(message);


    }

    protected void signup(object sender, EventArgs e)
    {
        saveTODB();
    }
    protected void sendmail(object sender,EventArgs e)
    {

    }
}