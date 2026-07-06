using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddStudent : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnupdate.Enabled = false;

            bindata();
        }
    }
    void bindata()
    {

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select * from Addstudentinfo", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gristudentinfo.DataSource = ds;
        gristudentinfo.DataBind();

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("Insert into Addstudentinfo(StudentName,Fathername,Mothername,StudentCast,religion,Class,RollNo,Address,Email,Dateofbirth,Gender,Parentcontact,Aadharcard,PrevSchoolname,Addmissionyear)values(@StudentName,@Fathername,@Mothername,@Cast,@religion,@Class,@RollNo,@Address,@Email,@Dateofbirth,@Gender,@Parentcontact,@Aadharcard,@PrevSchoolname,@Addmissionyear)", con1);
        con1.Open();
        cmd.Parameters.AddWithValue("@StudentName", txtname.Text);
        cmd.Parameters.AddWithValue("@Fathername", txtfathernm.Text);
        cmd.Parameters.AddWithValue("@Mothername", txtmothernm.Text);
        cmd.Parameters.AddWithValue("@Cast", txtcast.Text);
        cmd.Parameters.AddWithValue("@religion", ddlReligion.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Class", ddlclass.Text);
        cmd.Parameters.AddWithValue("@RollNo", txtrollno.Text);
        cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@Email", txtemail.Text);
        cmd.Parameters.AddWithValue("@Dateofbirth", txtdb.Text);
        cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Parentcontact", txtcont.Text);
        cmd.Parameters.AddWithValue("@Aadharcard", txtadh1.Text+txtadh2.Text+txtadh3.Text);
        cmd.Parameters.AddWithValue("@PrevSchoolname", txtprevschname.Text);
        cmd.Parameters.AddWithValue("@Addmissionyear", ddladmyear.SelectedItem.Text);
        cmd.ExecuteNonQuery();
        bindata();
        con1.Close();
        clear();
        Response.Write("<script>alert('Student Add successfully');</script>");

    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        btnupdate.Enabled = true;
        Button1.Enabled = false;
        Button btn = sender as Button;

        GridViewRow r = (GridViewRow)btn.NamingContainer;


        Label l = (Label)r.FindControl("lblregno");
        HiddenField1.Value = l.Text;

        Label lstdnm = (Label)r.FindControl("lblstdname");
        txtname.Text = lstdnm.Text;

        Label lfnm = (Label)r.FindControl("lblfnm");
        txtfathernm.Text = lfnm.Text;

        Label lemail = (Label)r.FindControl("lblemail");
        txtemail.Text = lemail.Text;

        Label ldb = (Label)r.FindControl("lbldb");
        if (ldb != null && !string.IsNullOrEmpty(ldb.Text))
        {
            DateTime dob;
            if (DateTime.TryParse(ldb.Text, out dob))
            {
             
                txtdb.Text = dob.ToString("yyyy-MM-dd");
            }
        }

        Label lmob = (Label)r.FindControl("lblmobile");
        txtcont.Text = lmob.Text;
        Label lmth = (Label)r.FindControl("lblmthnm");
        txtmothernm.Text = lmth.Text;
        Label lcast = (Label)r.FindControl("lblcast");
        txtcast.Text = lcast.Text;
        Label lrel = (Label)r.FindControl("lblreligion");
        ddlReligion.SelectedItem.Text = lrel.Text;

        Label l3 = (Label)r.FindControl("lbladhar");
        if (l3 != null && l3.Text.Length >= 4)
        {
            txtadh1.Text = l3.Text.Substring(0, 4);
        }
        Label la2 = (Label)r.FindControl("lbladhar");

        if (la2 != null && la2.Text.Length == 12)
        {
            string middleFour = l3.Text.Substring(4, 4); 
            txtadh2.Text = la2.Text.Substring(4, 4);


        }
        if (l3 != null && l3.Text.Length >= 4)
        {
           
            txtadh3.Text = l3.Text.Substring(l3.Text.Length - 4, 4);
        }


        Label l4 = (Label)r.FindControl("lbladdress");
        txtaddress.Text = l4.Text;

        Label lrollno = (Label)r.FindControl("lblrollno");
        txtrollno.Text = lrollno.Text;

        Label lprevschname = (Label)r.FindControl("lblprevschname");
        txtprevschname.Text = lprevschname.Text;


        Label ladmyear = (Label)r.FindControl("lbladmyear");
        ddladmyear.SelectedItem.Text = ladmyear.Text;

        Label l5 = (Label)r.FindControl("lblclass");
        ddlclass.Text = l5.Text;
        Label lgen = (Label)r.FindControl("lblgen");
        ddlgender.Text = lgen.Text;

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        Button1.Enabled = true;
        btnupdate.Enabled = false;
        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("update  Addstudentinfo set StudentName=@StudentName,Fathername=@Fathername,Mothername=@Mothername,StudentCast=@Cast,religion=@religion,Email=@Email,Class=@Class,Address=@Address,Dateofbirth=@Dateofbirth,Parentcontact=@Parentcontact,Aadharcard=@Aadharcard,PrevSchoolname=@PrevSchoolname,Addmissionyear=@Addmissionyear where Studentregno=@Studentregno", con);
        con.Open();
        cmd.Parameters.AddWithValue("@StudentName", txtname.Text);
        cmd.Parameters.AddWithValue("@Fathername", txtfathernm.Text);
        cmd.Parameters.AddWithValue("@Mothername", txtmothernm.Text);
        cmd.Parameters.AddWithValue("@Cast", txtcast.Text);
        cmd.Parameters.AddWithValue("@religion", ddlReligion.Text);
        cmd.Parameters.AddWithValue("@Email", txtemail.Text);
        cmd.Parameters.AddWithValue("@Class", ddlclass.Text);
        cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@Dateofbirth", txtdb.Text);
        cmd.Parameters.AddWithValue("@Parentcontact", txtcont.Text);
        cmd.Parameters.AddWithValue("@PrevSchoolname", txtprevschname.Text);
        cmd.Parameters.AddWithValue("@Addmissionyear", ddladmyear.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Aadharcard", txtadh1.Text + txtadh2.Text + txtadh3.Text);
        cmd.Parameters.AddWithValue("@Studentregno", HiddenField1.Value);
        cmd.ExecuteNonQuery();
        bindata();
        con.Close();
        clear();
        Response.Write("<script>alert('Student info Updated successfully');</script>");
    }

    void clear()
    {

        txtname.Text = "";
        txtfathernm.Text = "";
        txtmothernm.Text = "";
        txtemail.Text = "";
        txtdb.Text = "";
        txtcont.Text = "";
        txtaddress.Text = "";
        txtprevschname.Text = "";
        txtrollno.Text = "";
        txtadh1.Text = "";
        txtadh2.Text = "";
        txtadh3.Text = "";
        ddlgender.SelectedIndex = 0;
        ddlclass.SelectedIndex = 0;
        ddlgender.SelectedIndex = 0;
        ddladmyear.SelectedIndex = 0;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Button btn = sender as Button;

        GridViewRow r = (GridViewRow)btn.NamingContainer;


        Label lregno = (Label)r.FindControl("lblregno");
        HiddenField1.Value = lregno.Text;

        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("delete from Addstudentinfo where Studentregno=@Studentregno", con);
        cmd.Parameters.AddWithValue("@Studentregno", HiddenField1.Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        bindata();
        Response.Write("<script>alert('Student info deleted successfully');</script>");
    }



    protected void ddlclass_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);

        string selectedClass = ddlclass.SelectedValue;
        SqlCommand cmd = new SqlCommand("SELECT ISNULL(MAX(RollNo), 0) + 1 FROM Addstudentinfo WHERE Class = @Class", con);
        cmd.Parameters.AddWithValue("@Class", selectedClass);
        con.Open();
        int nextRollNo = (int)cmd.ExecuteScalar();
        txtrollno.Text = nextRollNo.ToString();
    }
}
