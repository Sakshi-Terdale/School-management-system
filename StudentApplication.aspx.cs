using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IdentityModel.Protocols.WSTrust;

public partial class Admin_StudentApplication : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            binddata();
        }
    }


   
    void binddata()
    {

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select * from NewAdmission where status='Pending'", con);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridshowstudentinfo.DataSource = ds;
        gridshowstudentinfo.DataBind();

       

       



    }

  
    protected void btnapproval_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;

        GridViewRow r = (GridViewRow)btn.NamingContainer;


        Label lreg = (Label)r.FindControl("lblregno");
        Label lstdnm = (Label)r.FindControl("lblstdname");
        Label lfnm = (Label)r.FindControl("lblmthname");
        Label lmthnm = (Label)r.FindControl("lblmthname");
        Label lcast = (Label)r.FindControl("lblcast");
        Label lreligion = (Label)r.FindControl("lblreligion");
        Label lemail= (Label)r.FindControl("lblemail");
        Label ldb = (Label)r.FindControl("lbldb");
        Label lgen = (Label)r.FindControl("lblgender");
        Label lmob = (Label)r.FindControl("lblmobile");
        Label ladh = (Label)r.FindControl("lbladhar");
        Label laddress = (Label)r.FindControl("lbladdress");
        Label ladmyear = (Label)r.FindControl("lbladmyear");
        Label lclass = (Label)r.FindControl("lblclass");
        Label lstatus = (Label)r.FindControl("lbladmstatus");

        Button btns = (Button)r.FindControl("btnapproval");

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd2 = new SqlCommand("SELECT ISNULL(MAX(RollNo), 0) + 1 FROM Addstudentinfo WHERE Class = @Class", con);
        cmd2.Parameters.AddWithValue("@Class", lclass.Text);
        con.Open();
        int nextRollNo = (int)cmd2.ExecuteScalar();


       

        SqlCommand cmd = new SqlCommand("Insert into Addstudentinfo(Studentname,Fathername,Mothername,StudentCast,religion,Email,Dateofbirth,Gender,Parentcontact,Aadharcard,Class,RollNo,Addmissionyear,Address,Status)values(@Studentname,@Fathername,@Mothername,@Cast,@religion,@Email,@Dateofbirth,@Gender,@Parentcontact,@AadharNo,@Class,@RollNo,@Addmissionyear,@Address,@Status)", con);
        cmd.Parameters.AddWithValue("@Studentname", lstdnm.Text);
        cmd.Parameters.AddWithValue("@Fathername", lfnm.Text);
        cmd.Parameters.AddWithValue("@Mothername", lmthnm.Text);
        cmd.Parameters.AddWithValue("@Cast", lcast.Text);
        cmd.Parameters.AddWithValue("@religion", lreligion.Text);
        cmd.Parameters.AddWithValue("@Email", lemail.Text);
        cmd.Parameters.AddWithValue("@Dateofbirth", ldb.Text);
        cmd.Parameters.AddWithValue("@Gender", lgen.Text);
        cmd.Parameters.AddWithValue("@Parentcontact", lmob.Text);
        cmd.Parameters.AddWithValue("@AadharNo", ladh.Text);
        cmd.Parameters.AddWithValue("@Class", lclass.Text);
        cmd.Parameters.AddWithValue("@RollNo", nextRollNo);
        cmd.Parameters.AddWithValue("@Addmissionyear", ladmyear.Text);
        cmd.Parameters.AddWithValue("@Address", laddress.Text);
        cmd.Parameters.AddWithValue("@Status", "Application Submitted");
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Response.Write("<script>alert('Student Add Successfully');</script>");

        SqlConnection con1 = new SqlConnection(str);
        SqlCommand cmd1 = new SqlCommand("update NewAdmission set Status=@Status  where RegNo=@regno", con1);
      
        cmd1.Parameters.AddWithValue("@Status", "Application Submitted");

        cmd1.Parameters.AddWithValue("@regno", lreg.Text);

        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);


        btns.BackColor = System.Drawing.Color.Green;
        btns.ForeColor = System.Drawing.Color.White;



    }
}