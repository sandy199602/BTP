using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class status : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string connstr = @"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;";
        using (SqlConnection cn = new SqlConnection(connstr))
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * FROM status WHERE Buscode='"+TextBox1.Text+"' and Date='"+TextBox2.Text+"'", cn);
            adp.Fill(dt);
        }
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("Default.aspx");


    }
}