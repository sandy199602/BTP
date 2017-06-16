using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class acontact : System.Web.UI.Page
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
}