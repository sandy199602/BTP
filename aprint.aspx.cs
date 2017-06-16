using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class aprint : System.Web.UI.Page
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
        if (Session["rate"] != null)
        {
            
            int a = int.Parse(Session["counter"].ToString());
            int b = int.Parse(Session["rate"].ToString());
            int c = a * b;
            label.Text = c.ToString();
        }
        seat.Text = Session["s"].ToString();
        tickets.Text = Session["counter"].ToString();
        if (Session["buscode"] != null)
            Response.Write(Session["buscode"].ToString());
        if (Session["date"] != null)
            Response.Write(Session["date"].ToString());
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("Default.aspx");


    }

    protected void book(object sender, EventArgs e)
    {
        try
        {
            int a = int.Parse(tickets.Text);
            int b = int.Parse(Session["rate"].ToString());
            int c = a * b;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            //string chkUser = string.Format("SELECT COUNT(*) FROM customer WHERE UserId = '{0}'", email.Text);
            // SqlCommand chk = new SqlCommand(chkUser, con);
            // int duplicate = chk.ExecuteScalar();
            string query = "insert into ticket ([passenger name],age,mobile,seats,gender,date,source,destination,buscode,rate)values('" + name.Text + "','" + age.Text + "','" + mobile.Text + "','" + seat.Text + "','" + DropDownList1.SelectedItem.Value + "','" + Session["date"] + "','" + Session["source"] + "','" + Session["destination"] + "','" + Session["buscode"] + "','" + c.ToString() + "')";

            string cmdtext = "update status set s1='" + Session["value1"].ToString() + "',s2='" + Session["value2"].ToString() + "',s3='" + Session["value3"].ToString() + "',s4='" + Session["value4"].ToString() + "',s5='" + Session["value5"].ToString() + "',s6='" + Session["value6"].ToString() + "',s7='" + Session["value7"].ToString() + "',s8='" + Session["value8"].ToString() + "',s9='" + Session["value9"].ToString() + "',s10='" + Session["value10"].ToString() + "',s11='" + Session["value11"].ToString() + "',s12='" + Session["value12"].ToString() + "',s13='" + Session["value13"].ToString() + "',s14='" + Session["value14"].ToString() + "',s15='" + Session["value15"].ToString() + "',s16='" + Session["value16"].ToString() + "',s17='" + Session["value17"].ToString() + "',s18='" + Session["value18"].ToString() + "',s19='" + Session["value19"].ToString() + "',s20='" + Session["value20"].ToString() + "',s21='" + Session["value21"].ToString() + "',s22='" + Session["value22"].ToString() + "',s23='" + Session["value23"].ToString() + "',s24='" + Session["value24"].ToString() + "',s25='" + Session["value25"].ToString() + "',s26='" + Session["value26"].ToString() + "',s27='" + Session["value27"].ToString() + "',s28='" + Session["value28"].ToString() + "',s29='" + Session["value29"].ToString() + "',s30='" + Session["value30"].ToString() + "',s31='" + Session["value31"].ToString() + "',s32='" + Session["value32"].ToString() + "',s33='" + Session["value33"].ToString() + "',s34='" + Session["value34"].ToString() + "',s35='" + Session["value35"].ToString() + "',s36='" + Session["value36"].ToString() + "',s37='" + Session["value37"].ToString() + "',s38='" + Session["value38"].ToString() + "',s39='" + Session["value39"].ToString() + "',s40='" + Session["value40"].ToString() + "',s41='" + Session["value41"].ToString() + "' where Buscode='" + Session["buscode"].ToString() + "'and Date='" + Session["date"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(cmdtext, con);
            int no = cmd.ExecuteNonQuery();
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            Session["s"] = seat.Text;
            Session["seats"] = tickets.Text;

            label.Text = c.ToString();

            Session["Arrival_Time"] = Session["Arrival_Time"];
            Session["deperaturetime"] = Session["deperaturetime"];
            Session["rate"] = c;
            Session["name"] = name.Text;
            Session["buscode"] = Session["buscode"];
            Session["date"] = Session["date"];
            Session["source"] = Session["source"];
            Session["destination"] = Session["destination"];
            Session["username"] = message.Text;


            if (no > 0)
            {
                Response.Redirect("aticket.aspx");


            }
            else
                Response.Write("<script>alert('there was an error in booking your seats');</script>");
        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
        }

    }
}