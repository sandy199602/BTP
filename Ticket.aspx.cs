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

public partial class Ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /* DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(@"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;");
        connection.Open();
        SqlCommand sqlCmd = new SqlCommand("SELECT * from ticket WHERE UserID = @username", connection);
        SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);


        sqlCmd.Parameters.AddWithValue("@username", user);
        sqlDa.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["ColumnName1"].ToString(); //Where ColumnName is the Field from the DB that you want to display
            TextBox2.Text = dt.Rows[0]["ColumnName2"].ToString();
            Label1.Text = dt.Rows[0]["ColumnName3"].ToString();
            Label2.Text = dt.Rows[0]["ColumnName4"].ToString();
        }
        connection.Close();
        */

        if (Session["buscode"] != null)
           busno.Text = Session["buscode"].ToString();
        if(Session["name"]!=null)
           pdetails.Text = Session["name"].ToString();
        if (Session["date"] != null)
           doj.Text = Session["date"].ToString();      
        if (Session["seats"] != null)
           seats.Text = Session["seats"].ToString();
        if (Session["s"] != null)
           seatno.Text = Session["s"].ToString();
        if (Session["source"] != null)
           source1.Text = Session["source"].ToString();
        if (Session["destination"] != null)
           destination1.Text = Session["destination"].ToString();
        if (Session["rate"] != null)
            label1.Text = Session["rate"].ToString();
        if (Session["Arrival_Time"] != null)
            atime.Text = Session["Arrival_Time"].ToString();
        if (Session["deperaturetime"] != null)
            dtime.Text = Session["deperaturetime"].ToString();
       DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(@"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;");
        connection.Open();
        SqlCommand sqlCmd = new SqlCommand("SELECT * from ticket WHERE [passenger name] = '"+pdetails.Text+"' and  date='"+doj.Text+"' and buscode='"+busno.Text+"' and seats='"+seatno.Text+"'", connection);
        SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);


    
        sqlDa.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            pnr.Text = dt.Rows[0]["pnr"].ToString(); //Where ColumnName is the Field from the DB that you want to display
           
        }
        connection.Close();
       

    }

    protected void print_Click(object sender, EventArgs e)
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