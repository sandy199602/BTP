using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class book : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=SANDY; Initial Catalog=Project; User=sa; Password=sql2008;");
        con.Open();
        String query1 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s1=0";
        String query2 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s2=0";
        String query3 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s3=0";
        String query4 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s4=0";
        String query5 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s5=0";
        String query6 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s6=0";
        String query7 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s7=0";
        String query8 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s8=0";
        String query9 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s9=0";
        String query10 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "'and s10=0";
        String query11 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s11=0";
        String query12 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s12=0";
        String query13 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s13=0";
        String query14 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s14=0";
        String query15 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s15=0";
        String query16 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s16=0";
        String query17 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s17=0";
        String query18 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s18=0";
        String query19 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s19=0";
        String query20 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "'and s20=0";
        String query21 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s21=0";
        String query22 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s22=0";
        String query23 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s23=0";
        String query24 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s24=0";
        String query25 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s25=0";
        String query26 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s26=0";
        String query27 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s27=0";
        String query28 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s28=0";
        String query29 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s29=0";
        String query30 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "'and s30=0";
        String query31 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s31=0";
        String query32 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s32=0";
        String query33 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s33=0";
        String query34 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s34=0";
        String query35 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s35=0";
        String query36 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s36=0";
        String query37 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s37=0";
        String query38 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s38=0";
        String query39 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "' and s39=0";
        String query40 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "'and s40=0";
        String query41 = "select count(*) from status where Buscode='" + Session["buscode"] + "' and date='" + Session["date"] + "'and s41=0";
        SqlCommand cmd = new SqlCommand(query1, con);
        cmd.Connection = con;
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton1.ImageUrl = "~/booked_seat_img.gif";
       
        cmd.CommandText = query2;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton2.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query3;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton3.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query4;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton4.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query5;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton5.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query6;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton6.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query7;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton7.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query8;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton8.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query9;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton9.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query10;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton10.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query11;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton11.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query12;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton12.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query13;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton13.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query14;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton14.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query15;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton15.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query16;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton16.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query17;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton17.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query18;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton18.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query19;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton19.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query20;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton20.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query21;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton21.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query22;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton22.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query23;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton23.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query24;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton24.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query25;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton25.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query26;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton26.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query27;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton27.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query28;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton28.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query29;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton29.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query30;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton30.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query31;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton31.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query32;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton32.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query33;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton33.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query34;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton34.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query35;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton35.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query36;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton36.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query37;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton37.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query38;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton38.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query39;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton39.ImageUrl = "~/booked_seat_img.gif";

        cmd.CommandText = query40;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton40.ImageUrl = "~/booked_seat_img.gif";
        cmd.CommandText = query41;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
            ImageButton41.ImageUrl = "~/booked_seat_img.gif";


    }
    static int counter = 0;
   static string s = "";
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {if (ImageButton1.ImageUrl != "~/booked_seat_img.gif")
        {
           
            if (ImageButton1.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton1.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s +"1";
                s = s + ",";
            }
            else
            {
                ImageButton1.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
            
        }
       
    }
   
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton2.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton2.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton2.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "2";
                s = s + ",";
            }
            else
            {
                ImageButton2.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton3.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton3.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton3.ImageUrl = "~/selected_seat_img.gif";
              counter=counter+1;
                s = s + "3";
                s = s + ",";
            }
            else
            {
                ImageButton3.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton4.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton4.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton4.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "4";
                s = s + ",";
            }
            else
            {
                ImageButton4.ImageUrl = "~/available_seat_img.gif";
                counter--; 
            }
        }
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton5.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton5.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton5.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "5";
                s = s + ",";
            }
           
            else
            {
                ImageButton5.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton6.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton6.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton6.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "6";
                s = s + ",";
            }
            else
            {
                ImageButton6.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton7.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton7.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton7.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "7";
                s = s + ",";
            }
            else
            {
                ImageButton7.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton8.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton8.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton8.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "8";
                s = s + ",";
            }
            else
            {
                ImageButton8.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton9.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton9.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton9.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "9";
                s = s + ",";
            }
            else
            {
                ImageButton9.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton10.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton10.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton10.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "10";
                s = s + ",";
            }
            else
            {
                ImageButton10.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton11.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton11.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton11.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "11";
                s = s + ",";
            }
            else
            {
                ImageButton11.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton12.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton12.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton12.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "12";
                s = s + ",";
            }
            else
            {
                ImageButton12.ImageUrl = "~/available_seat_img.gif";
                counter--;

            }
        }
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton13.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton13.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton13.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "13";
                s = s + ",";
            }
            else
            {
                ImageButton13.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton14.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton14.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton14.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "14";
                s = s + ",";
            }
            else
            {
                ImageButton14.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton15.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton15.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton15.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "15";
                s = s + ",";
            }
            else
            {
                ImageButton15.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton16.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton16.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton16.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "16";
                s = s + ",";
            }
            else
            {
                ImageButton16.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton17.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton17.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton17.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "17";
                s = s + ",";
            }
            else
            {
                ImageButton17.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton18.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton18.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton18.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "18";
                s = s + ",";
            }
            else
            {
                ImageButton18.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }

    }
    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton19.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton19.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton19.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "19";
                s = s + ",";
            }
            else
            {
                ImageButton19.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton20.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton20.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton20.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "20";
                s = s + ",";
            }
            else
            {
                ImageButton20.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton21.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton21.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton21.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "21";
                s = s + ",";
            }
            else
            {
                ImageButton21.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton22_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton22.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton22.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton22.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "22";
                s = s + ",";
            }
            else
            {
                ImageButton22.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton23_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton23.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton23.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton23.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "23";
                s = s + ",";
            }
            else
            {
                ImageButton23.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton24_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton24.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton24.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton24.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "24";
                s = s + ",";
            }
            else
            {
                ImageButton24.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton25_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton25.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton25.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton25.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "25";
                s = s + ",";
            }
            else
            {
                ImageButton25.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton26_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton26.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton26.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton26.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "26";
                s = s + ",";
            }
            else
            {
                ImageButton26.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton27_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton27.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton27.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton27.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "27";
                s = s + ",";
            }
            else
            {
                ImageButton27.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton28_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton28.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton28.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton28.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "28";
                s = s + ",";
            }
            else
            {
                ImageButton28.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton29_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton29.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton29.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton29.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "29";
                s = s + ",";
            }
            else
            {
                ImageButton29.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }

    }
    protected void ImageButton30_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton30.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton30.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton30.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "30";
                s = s + ",";
            }
            else
            {
                ImageButton30.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton31_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton31.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton31.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton31.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "31";
                s = s + ",";
            }
            else
            {
                ImageButton31.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }
    protected void ImageButton32_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton32.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton32.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton32.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "32";
                s = s + ",";
            }
            else
            {
                ImageButton32.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton39_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton39.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton39.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton39.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "39";
                s = s + ",";
            }
            else
            {
                ImageButton39.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton40_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton40.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton40.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton40.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "40";
                s = s + ",";
            }
            else
            {
                ImageButton40.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton35_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton35.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton35.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton35.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "35";
                s = s + ",";
            }
            else
            {
                ImageButton35.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton36_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton36.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton36.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton36.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "36";
                s = s + ",";
            }
            else
            {
                ImageButton36.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton33_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton33.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton33.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton33.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "33";
                s = s + ",";
            }
            else
            {
                ImageButton33.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton37_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton37.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton37.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton37.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "37";
                s = s + ",";
            }
            else
            {
                ImageButton37.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton34_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton34.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton34.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton34.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "34";
                s = s + ",";

            }
            
            else
            {
                ImageButton34.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton38_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton38.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton38.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton38.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "38";
                s = s + ",";
            }
            else
            {
                ImageButton38.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void ImageButton141_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton41.ImageUrl != "~/booked_seat_img.gif")
        {
            if (ImageButton41.ImageUrl == "~/available_seat_img.gif")
            {
                ImageButton41.ImageUrl = "~/selected_seat_img.gif";
                counter++;
                s = s + "41";
                s = s + ",";
            }
            else
            {
                ImageButton41.ImageUrl = "~/available_seat_img.gif";
                counter--;
            }
        }
    }

    protected void GO(object sender, EventArgs e)
    {




            if (ImageButton1.ImageUrl == "~/selected_seat_img.gif" || ImageButton1.ImageUrl== "~/booked_seat_img.gif")
            {

                Session["value1"] = 1;
            }
            else
                Session["value1"] = 0;

            if (ImageButton2.ImageUrl == "~/selected_seat_img.gif" || ImageButton2.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value2"] = 1;
            }
            else
                Session["value2"] = 0;

            if (ImageButton3.ImageUrl == "~/selected_seat_img.gif" || ImageButton3.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value3"] = 1;
            }
            else
                Session["value3"] = 0;

            if (ImageButton4.ImageUrl == "~/selected_seat_img.gif" || ImageButton4.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value4"] = 1;
            }
            else
                Session["value4"] = 0;

            if (ImageButton5.ImageUrl == "~/selected_seat_img.gif" || ImageButton5.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value5"] = 1;
            }
            else
                Session["value5"] = 0;
            if (ImageButton6.ImageUrl == "~/selected_seat_img.gif" || ImageButton6.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value6"] = 1;
            }
            else
                Session["value6"] = 0;

            if (ImageButton7.ImageUrl == "~/selected_seat_img.gif" || ImageButton7.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value7"] = 1;
            }
            else
                Session["value7"] = 0;

            if (ImageButton8.ImageUrl == "~/selected_seat_img.gif" || ImageButton8.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value8"] = 1;
            }
            else
                Session["value8"] = 0;

            if (ImageButton9.ImageUrl == "~/selected_seat_img.gif" || ImageButton9.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value9"] = 1;
            }
            else
                Session["value9"] = 0;

            if (ImageButton10.ImageUrl == "~/selected_seat_img.gif" || ImageButton10.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value10"] = 1;
            }
            else
                Session["value10"] = 0;

            if (ImageButton11.ImageUrl == "~/selected_seat_img.gif" || ImageButton11.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value11"] = 1;
            }
            else
                Session["value11"] = 0;

            if (ImageButton12.ImageUrl == "~/selected_seat_img.gif" || ImageButton12.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value12"] = 1;
            }
            else
                Session["value12"] = 0;

            if (ImageButton13.ImageUrl == "~/selected_seat_img.gif" || ImageButton13.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value13"] = 1;
            }
            else
                Session["value13"] = 0;

            if (ImageButton14.ImageUrl == "~/selected_seat_img.gif" || ImageButton14.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value14"] = 1;
            }
            else
                Session["value14"] = 0;

            if (ImageButton15.ImageUrl == "~/selected_seat_img.gif" || ImageButton15.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value15"] = 1;
            }
            else
                Session["value15"] = 0;

            if (ImageButton16.ImageUrl == "~/selected_seat_img.gif" || ImageButton16.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value16"] = 1;
            }
            else
                Session["value16"] = 0;

            if (ImageButton17.ImageUrl == "~/selected_seat_img.gif" || ImageButton17.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value17"] =1;
            }
            else
                Session["value17"] = 0;

            if (ImageButton18.ImageUrl == "~/selected_seat_img.gif" || ImageButton18.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value18"] = 1;
            }
            else
                Session["value18"] = 0;

            if (ImageButton19.ImageUrl == "~/selected_seat_img.gif" || ImageButton19.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value19"] = 1;
            }
            else
                Session["value19"] = 0;

            if (ImageButton20.ImageUrl == "~/selected_seat_img.gif" || ImageButton20.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value20"] =1;
            }
            else
                Session["value20"] = 0;

            if (ImageButton21.ImageUrl == "~/selected_seat_img.gif" || ImageButton21.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value21"] = 1;
            }
            else
                Session["value21"] = 0;

            if (ImageButton22.ImageUrl == "~/selected_seat_img.gif" || ImageButton22.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value22"] = 1;
            }
            else
                Session["value22"] = 0;

            if (ImageButton23.ImageUrl == "~/selected_seat_img.gif" || ImageButton23.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value23"] = 1;
            }
            else
                Session["value23"] = 0;

            if (ImageButton24.ImageUrl == "~/selected_seat_img.gif" || ImageButton24.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value24"] =1;
            }
            else
                Session["value24"] = 0;

            if (ImageButton25.ImageUrl == "~/selected_seat_img.gif" || ImageButton25.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value25"] =1;
            }
            else
                Session["value25"] = 0;

            if (ImageButton26.ImageUrl == "~/selected_seat_img.gif" || ImageButton26.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value26"] = 1;
            }
            else
                Session["value26"] = 0;

            if (ImageButton27.ImageUrl == "~/selected_seat_img.gif" || ImageButton27.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value27"] = 1;
            }
            else
                Session["value27"] = 0;

            if (ImageButton28.ImageUrl == "~/selected_seat_img.gif" || ImageButton28.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value28"] = 1;
            }
            else
                Session["value28"] = 0;

            if (ImageButton29.ImageUrl == "~/selected_seat_img.gif" || ImageButton29.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value29"] = 1;
            }
            else
                Session["value29"] = 0;

            if (ImageButton30.ImageUrl == "~/selected_seat_img.gif" || ImageButton30.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value30"] = 1;
            }
            else
                Session["value30"] = 0;

            if (ImageButton31.ImageUrl == "~/selected_seat_img.gif" || ImageButton31.ImageUrl == "~/booked_seat_img.gif")
            {
                Session["value31"] =1 ;
            }
            else
                Session["value31"] = 0;

            if (ImageButton32.ImageUrl == "~/selected_seat_img.gif" || ImageButton32.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value32"] = 1;
            }
            else
                Session["value32"] = 0;


            if (ImageButton33.ImageUrl == "~/selected_seat_img.gif" || ImageButton33.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value33"] = 1;
            }
            else
                Session["value33"] = 0;

            if (ImageButton34.ImageUrl == "~/selected_seat_img.gif" || ImageButton34.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value34"] =1;
            }
            else
                Session["value34"] = 0;

            if (ImageButton35.ImageUrl == "~/selected_seat_img.gif" || ImageButton35.ImageUrl == "~/booked_seat_img.gif")
            {
                Session["value35"] =1;
            }
            else
                Session["value35"] = 0;

            if (ImageButton36.ImageUrl == "~/selected_seat_img.gif" || ImageButton36.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value36"] = 1;
            }
            else
                Session["value36"] = 0;

            if (ImageButton37.ImageUrl == "~/selected_seat_img.gif" || ImageButton37.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value37"] = 1;
            }
            else
                Session["value37"] = 0;

            if (ImageButton38.ImageUrl == "~/selected_seat_img.gif" || ImageButton38.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value38"] = 1;
            }
            else
                Session["value38"] = 0;

            if (ImageButton39.ImageUrl == "~/selected_seat_img.gif" || ImageButton39.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value39"] = 1;
            }
            else
                Session["value39"] = 0;

            if (ImageButton40.ImageUrl == "~/selected_seat_img.gif" || ImageButton40.ImageUrl == "~/booked_seat_img.gif")
            {

                Session["value40"] =1;
            }
            else
                Session["value40"] = 0;

            if (ImageButton41.ImageUrl == "~/selected_seat_img.gif" || ImageButton41.ImageUrl == "~/booked_seat_img.gif")
            {
                Session["value41"] = 1;
            }
            else
                Session["value41"] = 0;
            Session["buscode"] = Session["buscode"];
            Session["date"] = Session["date"];
            Session["counter"] = counter;
        s = s.Remove(s.Length - 1);
        Session["s"] = s;
        Response.Redirect("print.aspx");
      
        
    }
    protected void loginwindow(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=SANDY; Initial Catalog=project; User ID=sa; Password=sql2008;");


            con.Open();


            SqlCommand cmd = new SqlCommand("select COUNT(*)FROM customer WHERE email='" + login.Text + "' and password='" + password1.Text + "'");


            cmd.Connection = con;


            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());


            if (OBJ > 0)


            {

                Session["username"] = login.Text;
                Response.Redirect("afterlogin.aspx");


            }
            else
            {
                error.Text = "password is incorrect";
            }


        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
        }

    }

    protected void sendmail(object sender, EventArgs e)
    {

    }

    protected void signup(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            //string chkUser = string.Format("SELECT COUNT(*) FROM customer WHERE UserId = '{0}'", email.Text);
            // SqlCommand chk = new SqlCommand(chkUser, con);
            // int duplicate = chk.ExecuteScalar();

            string cmdtext = "INSERT INTO customer Values('" + email.Text + "', '" + password.Text + "','" + firstname.Text + "', '" + lastname.Text + "', '" + mobileno.Text + "')";
            SqlCommand cmd = new SqlCommand(cmdtext, con);
            int no = cmd.ExecuteNonQuery();
            if (no > 0)
            {
                Response.Write("<script>alert('registrtaion Succssfull');</script>");
                SendEmail();

            }
            else
                Response.Write("<script>alert('registrtaion Succssfull');</script>");
        }
        catch (SqlException ee)
        {
            Response.Write(ee.Message);
        }
    }
    public void SendEmail()
    {


        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        string emailadd = email.Text;

        message.From = new MailAddress("onlinebusseat@gmail.com");
        message.To.Add(emailadd);
        message.Subject = "Welcome";
        message.Body = "Welcome to the chawal and chawla buses";
        message.IsBodyHtml = true;
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = new System.Net.NetworkCredential("onlinebusseat@gmail.com", "btechproject");
        client.Send(message);
        Response.Redirect("#message_form");

    }
}