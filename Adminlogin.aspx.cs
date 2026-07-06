using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adminlog_Adminlogin : System.Web.UI.Page
{
   string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select * from Loginmaster where Username=@adminnm and Password=@password", con);
        cmd.Parameters.AddWithValue("@adminnm", txtadminnm.Text);

        cmd.Parameters.AddWithValue("@password", txtpass.Text);

        SqlDataAdapter da1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);

          SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Adminnm"] = txtadminnm.Text;
                Response.Redirect("~/Admin/Dashborad.aspx");

            }
            else
            {
                Response.Write("<Script>alert('Admin Name and Password Inncorrect')</script>");
            }
        }
       
    }

    
