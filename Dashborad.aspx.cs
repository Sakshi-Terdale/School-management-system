using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Dashborad : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      if(!IsPostBack)
        {

            Bindnewapplication();
            Bindtotstudent();
            Bindtotstaff();
            Bindfees();
        }
        
    }
   
    private void Bindnewapplication()
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("SELECT * FROM NewAdmission WHERE Status='Pending'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
       
            lblnewappl.Text =  dt.Rows.Count.ToString();
        
    }
    private void Bindtotstudent()
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Addstudentinfo", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        lbltotstudent.Text =  dt.Rows.Count.ToString();
    }
    private void Bindtotstaff()
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("select * from AddTeacherinfo", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        lbltotteacher.Text = dt.Rows.Count.ToString();
    }
    private void Bindfees()
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("select * from StudentFees", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        lblfees.Text = dt.Rows.Count.ToString();
    }
}