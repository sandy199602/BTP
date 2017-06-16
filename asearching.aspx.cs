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

public partial class asearching : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
            message.Text = Session["username"].ToString();
        else
            Response.Redirect("default.aspx");
        if (Session["source"] != null)
            sourcecarry.Text = Session["source"].ToString();
        if (Session["destination"] != null)
            destinationcarry.Text = Session["destination"].ToString();
        if (Session["date"] != null)
            calendercarry.Text = Session["date"].ToString();
        if (!IsPostBack)
        {
            BindCustomers();
        }

    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("Default.aspx");

    }

    private void BindCustomers()
    {

        DataTable dt = new DataTable();
        string connstr = @"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;";
        using (SqlConnection cn = new SqlConnection(connstr))
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * FROM Bus WHERE Source = '" + sourcecarry.Text + "' and Destination = '" + destinationcarry.Text + "'", cn);
            adp.Fill(dt);
        }
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Label4.Text = "Sorry no busses found.But yes we have taken a record of your query";
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        TextBox1.Text = row.Cells[1].Text;
        TextBox2.Text = row.Cells[8].Text;
        Session["Arrival_Time"] = row.Cells[7].Text;
        Session["deperaturetime"] = row.Cells[6].Text;
        SqlConnection con = new SqlConnection(@"Data Source=SANDY; Initial Catalog=Project; User=sa; Password=sql2008;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*)from status where buscode='" + TextBox1.Text + "' and date='" + calendercarry.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());


        if (OBJ > 0)
        {
            Session["rate"] = TextBox2.Text;
            Session["buscode"] = TextBox1.Text;
            Session["date"] = calendercarry.Text;
            Session["source"] = Session["source"];
            Session["destination"] = Session["destination"];
            Response.Write(Session["source"].ToString());
            Response.Redirect("abook.aspx");


        }
        else
        {
            string query = "insert into status values ('" + TextBox1.Text + "','" + calendercarry.Text + "','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0')";
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            Session["buscode"] = TextBox1.Text;
            Session["date"] = calendercarry.Text;
            Session["source"] = Session["source"];
            Session["destination"] = Session["destination"];
            Response.Redirect("abook.aspx");
        }
    }

}