using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class afterlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"] !=null)
        {
            message.Text = Session["username"].ToString();
        }
       
    }


    protected void find(object sender, EventArgs e)
    {

    }
}