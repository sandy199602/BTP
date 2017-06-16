using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addbus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add_Bus(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            //string chkUser = string.Format("SELECT COUNT(*) FROM customer WHERE UserId = '{0}'", email.Text);
            // SqlCommand chk = new SqlCommand(chkUser, con);
            // int duplicate = chk.ExecuteScalar();

            string cmdtext = "INSERT INTO Bus Values('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "','" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "', '" + TextBox8.Text + "')";
            SqlCommand cmd = new SqlCommand(cmdtext, con);
            int no = cmd.ExecuteNonQuery();
            if (no > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bus Added')", true);


            }
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There was an error')", true);
        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
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