﻿using System;
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
    {//learning things
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
            message.Body = "Welcome to the Moonlight travels service. ";
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
        try
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            SqlCommand cmd=new SqlCommand("select count(*)from customer where email='"+fgtemail.Text+"'");
            cmd.Connection = con;
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
          if (OBJ>0)
                {
                MailMessage message = new MailMessage();
                message.From = new MailAddress("onlinebusseat@gmail.com");
                message.To.Add(fgtemail.Text);
                message.Subject = "Welcome";
                message.Body = "http://localhost:51769/forgotpassword.aspx?Name=" + fgtemail.Text;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.Credentials = new System.Net.NetworkCredential("onlinebusseat@gmail.com", "btechproject");
                client.Send(message);
                client.EnableSsl = true;

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Open your email to reset the passsword')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter a valid email id')", true);

            }
        }
        catch(Exception ee)
        {
            Response.Write(ee.Message);
        }
       
    }

    protected void loginwindow(object sender, EventArgs e)
    {
        try
        {
            if (login.Text == "admin" && password1.Text == "admin")
                Response.Redirect("admin.aspx");
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
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('check the username and password')", true);

            }


        }
        catch(SqlException ee)
        {
            Response.Write(ee.Message);
        }
       
    }






    protected void search(object sender, EventArgs e)
    {
        Session["Name"] = source.Text;
        Session["Name2"] = destination.Text;
        Session["Name3"] = calendar.Text;

        Response.Redirect("searching.aspx");
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> tosource(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["constring"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select [Route] from Route where " +
                "[Route] like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> to = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        to.Add(sdr["Route"].ToString());
                    }
                }
                conn.Close();
                return to;
            }
        }
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> todestination(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["constring"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select [Route] from Route where " +
                "[Route] like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> to = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                   {
                    while (sdr.Read())
                    {
                        to.Add(sdr["Route"].ToString());
                    }
                }
                conn.Close();
                return to;
            }
        }
    }

}
