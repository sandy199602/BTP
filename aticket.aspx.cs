using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class aticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            message.Text = Session["username"].ToString();
        }
        else
            Response.Redirect("default.aspx");
        if (Session["buscode"] != null)
            busno.Text = Session["buscode"].ToString();
        if (Session["name"] != null)
            pdetails.Text = Session["name"].ToString();
        if (Session["date"] != null)
            doj.Text = Session["date"].ToString();
        if (Session["seats"] != null)
            seats.Text = Session["seats"].ToString();
        if (Session["s"] != null)
            seatno.Text = Session["s"].ToString();
        if (Session["source"]!= null)
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
        SqlCommand sqlCmd = new SqlCommand("SELECT * from ticket WHERE [passenger name] = '" + pdetails.Text + "' and  date='" + doj.Text + "' and buscode='" + busno.Text + "' and seats='" + seatno.Text + "'", connection);
        SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);



        sqlDa.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            pnr.Text = dt.Rows[0]["pnr"].ToString(); //Where ColumnName is the Field from the DB that you want to display

        }
        connection.Close();


    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("Default.aspx");

    }
}