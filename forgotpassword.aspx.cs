using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Name"] != null)
            userid.Text = Request.QueryString["Name"];

    }

    protected void fgtpass_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        con.Open();
        if(Confirmpassword.Text==newpassword.Text)
        {
            SqlCommand cmmd = new SqlCommand("update Customer SET password ='" + newpassword.Text + "' where email='" + userid.Text + "' ");
            cmmd.Connection = con;
            int no = cmmd.ExecuteNonQuery();
            if (no > 0)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password changed successfully')", true);

            }

        }
        else
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password and Confirm password are not same')", true);


    }
}