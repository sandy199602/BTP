using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class aprintedticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            message.Text = Session["username"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void Search(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;");


        con.Open();


        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM ticket WHERE pnr='" + pnr.Text + "'");


        cmd.Connection = con;


        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());


        if (OBJ > 0)
        {
            Session["pnr"] = pnr.Text;
            Response.Redirect("searchedticket.aspx");
        }
        else
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter a valid pnr')", true);
    }

    protected void logout_Click(object sender, EventArgs e)
    {

        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }
}