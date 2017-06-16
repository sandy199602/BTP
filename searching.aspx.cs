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

public partial class searching : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] != null)
            sourcecarry.Text = Session["Name"].ToString();
        if (Session["Name2"] != null)
            destinationcarry.Text = Session["Name2"].ToString();
        if (Session["Name3"] != null)
            calendercarry.Text = Session["Name3"].ToString();
        if(!IsPostBack)
        {
            BindCustomers();
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
    private void BindCustomers()
    {
        
        DataTable dt = new DataTable();
        string connstr = @"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;";
        using (SqlConnection cn = new SqlConnection(connstr))
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * FROM Bus WHERE Source = '"+sourcecarry.Text+"' and Destination = '"+destinationcarry.Text+"'", cn);
            adp.Fill(dt);
        }
        if(dt.Rows.Count>0)
        {
            gvbuses.DataSource = dt;
            gvbuses.DataBind();
        }
        else
        {
            Label4.Text = "Sorry no busses found.But yes we have taken a record of your query";
        }
    }



    protected void gvbuses_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = gvbuses.SelectedRow;
        TextBox1.Text = row.Cells[1].Text;
        TextBox2.Text = row.Cells[8].Text;
        Session["Arrival_Time"] = row.Cells[7].Text;
        Session["deperaturetime"] = row.Cells[6].Text;
        SqlConnection con =new SqlConnection( @"Data Source=SANDY; Initial Catalog=Project; User=sa; Password=sql2008;");
        con.Open();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('PLEASE LOGIN OR REGISTER TO VIEW THE SEAT')", true);

        /*  SqlCommand cmd = new SqlCommand("select count(*)from status where buscode='" + TextBox1.Text + "' and date='" + calendercarry.Text + "'");
          cmd.Connection = con;
          int OBJ = Convert.ToInt32(cmd.ExecuteScalar());


          if (OBJ > 0)
          {
              Session["rate"] = TextBox2.Text;
              Session["buscode"] = TextBox1.Text;
              Session["date"] = calendercarry.Text;
              Session["source"] = Session["name"];
              Session["destination"] = Session["name2"];
              Response.Redirect("book.aspx");


          }
          else
          {
              string query="insert into status values ('" + TextBox1.Text + "','" + calendercarry.Text + "','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0')";
              cmd.CommandText = query;
              cmd.ExecuteNonQuery();
              Session["buscode"] = TextBox1.Text;
              Session["date"] = calendercarry.Text;
              Session["source"] = Session["name"];
              Session["destination"] = Session["name2"];
              Response.Redirect("book.aspx");
          }*/
    }
}