using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
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

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }

    protected void submit(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            //string chkUser = string.Format("SELECT COUNT(*) FROM customer WHERE UserId = '{0}'", email.Text);
            // SqlCommand chk = new SqlCommand(chkUser, con);
            // int duplicate = chk.ExecuteScalar();
            string s = "underprogress";

            string cmdtext = "INSERT INTO feedback Values('" + message.Text + "', '" +title.Text + "','" + feedback_content.Text + "','"+s+"')";
            SqlCommand cmd = new SqlCommand(cmdtext, con);
            int no = cmd.ExecuteNonQuery();
            if (no > 0)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Feedbackk Submitted successfully')", true);

            }
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There was a problem')", true);


        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
        }
    }
}