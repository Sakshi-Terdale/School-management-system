using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Admin_TeacherInformation : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            btnupdate.Enabled = false;
            bindata();
        }
    }

    void bindata()
    {

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select * from AddTeacherinfo", con);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridTeacherinfo.DataSource = ds;
        gridTeacherinfo.DataBind();

    }


    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);


        string gen = string.Empty;

        String cls = "";

       

        if (cblclass5.Checked)
          {

            cls += "5th,";
        


    }

        if (cblclass6.Checked)
        {

            cls += "6th,";
        }
       if (cblclass7.Checked)
        {

            cls += "7th,";
        }
        if (cblclass8.Checked)
        {

            cls += "8th,";
        }
         if (cblclass9.Checked)
        {

            cls += "9th,";
        }
        if (cblclass10.Checked)
        {

            cls += "10th,";
        }
        // Remove trailing comma
        if (cls.EndsWith(","))
        {
            cls = cls.Substring(0, cls.Length - 1);
        }



        //subject

        String sub = string.Empty;



        if (chkmarathi.Checked)
        {

            sub += "Marathi,";



        }

        if (chkhindi.Checked)
        {

            sub += "Hindi,";
        }
        if (chksanskrut.Checked)
        {

            sub += "Sanskrut,";
        }
        if (chkgeo.Checked)
        {

            sub += "Geogrophy,";
        }
        if (chkhistory.Checked)
        {

            sub += "History,";
        }
        if (chkmaths.Checked)
        {

            sub += "Maths,";
        }
        if (chkenglish.Checked)
        {

            sub += "English,";
        }
        if (chkscience.Checked)
        {

            sub += "Science,";
        }
        if (chkIT.Checked)
        {

            sub += "IT,";
        }
        if (chkPE.Checked)
        {

            sub += "PE,";
        }
        // Remove trailing comma
        if (sub.EndsWith(","))
        {
            sub = sub.Substring(0, sub.Length - 1);
        }

        SqlCommand cmd = new SqlCommand("Insert into AddTeacherinfo(Fullname,Gender,MobileNo,Qualification,EmailID,AllocatedClass,Subject,JoinedYear,Address)values(@Fullname,@Gender,@MobileNo,@Qualification,@EmailID,@AllocatedClass,@Subject,@JoinedYear,@Address)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@Fullname", txtname.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@MobileNo", txtmob.Text);
           cmd.Parameters.AddWithValue("@Qualification", txtqualification.Text);
           cmd.Parameters.AddWithValue("@EmailID", txtemail.Text);

            cmd.Parameters.AddWithValue("@AllocatedClass", cls);
            cmd.Parameters.AddWithValue("@Subject", sub);
            cmd.Parameters.AddWithValue("@JoinedYear", ddljnyear.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);

            cmd.ExecuteNonQuery();
            bindata();
             con.Close();
           clear();
            Response.Write("<script>alert('Teacher Information Added successfully');</script>");

        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        btnupdate.Visible = false;
        Button btn = sender as Button;

        GridViewRow r = (GridViewRow)btn.NamingContainer;


        Label l = (Label)r.FindControl("lbltid");
        HiddenField1.Value = l.Text;

        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("delete from AddTeacherinfo where TeacherID=@TeacherID", con);
        cmd.Parameters.AddWithValue("@TeacherID", HiddenField1.Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        bindata();
        Response.Write("<script>alert('Teacher info deleted successfully');</script>");
    }
    void clear()
    {
        txtname.Text = "";
        txtmob.Text = "";
        txtqualification.Text = "";
        txtemail.Text = "";
        txtaddress.Text = "";
        cblclass5.Checked = false;
        cblclass6.Checked = false;
        cblclass7.Checked = false;
        cblclass8.Checked = false;
        cblclass9.Checked = false;
        cblclass10.Checked = false;
        chkmarathi.Checked = false;
        chkhindi.Checked = false;
        chksanskrut.Checked = false;
        chkgeo.Checked = false;
        chkhistory.Checked = false;
        chkmaths.Checked = false;
        chkenglish.Checked = false;
        chkscience.Checked = false;
        chkIT.Checked = false;
        chkPE.Checked = false;

        ddljnyear.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        btnupdate.Enabled = true;
        btnsubmit.Enabled = false;
        Button btn = sender as Button;

        GridViewRow r = (GridViewRow)btn.NamingContainer;


        Label l = (Label)r.FindControl("lbltid");
        HiddenField1.Value = l.Text;



        Label l1 = (Label)r.FindControl("lbltname");
        txtname.Text = l1.Text;
        Label l2 = (Label)r.FindControl("lblmobile");
        txtmob.Text = l2.Text;
        Label lqualfication = (Label)r.FindControl("lblqualification");
        txtqualification.Text = lqualfication.Text;
        Label l3 = (Label)r.FindControl("lblemail");
        txtemail.Text = l3.Text;
       

        Label lsub = (Label)r.FindControl("lblsubject");
        string[] selectedsubject = lsub.Text.Split(',');

        chkmarathi.Checked = selectedsubject.Contains("Marathi");
        chkhindi.Checked = selectedsubject.Contains("Hindi");
        chksanskrut.Checked = selectedsubject.Contains("Sanskrut");
        chkgeo.Checked = selectedsubject.Contains("Geogrophy");
        chkhistory.Checked = selectedsubject.Contains("History");
        chkmaths.Checked = selectedsubject.Contains("Maths");
        chkenglish.Checked = selectedsubject.Contains("English");
        chkscience.Checked = selectedsubject.Contains("Science");
        chkIT.Checked = selectedsubject.Contains("IT");
        chkPE.Checked = selectedsubject.Contains("PE");

        Label l5 = (Label)r.FindControl("lbljyear");
        ddljnyear.Text = l5.Text;
        Label l6 = (Label)r.FindControl("lbladdress");
        txtaddress.Text = l6.Text;


        Label lblClasses = (Label)r.FindControl("lblaclass");
        string[] selectedClasses = lblClasses.Text.Split(',');

        cblclass5.Checked = selectedClasses.Contains("5th");
        cblclass6.Checked = selectedClasses.Contains("6th");
        cblclass7.Checked = selectedClasses.Contains("7th");
        cblclass8.Checked = selectedClasses.Contains("8th");
        cblclass9.Checked = selectedClasses.Contains("9th");
        cblclass10.Checked = selectedClasses.Contains("10th");
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        btnsubmit.Enabled = false;
        btnupdate.Enabled = true;
        String cls = "";



        if (cblclass5.Checked)
        {

            cls += "5th,";



        }

        if (cblclass6.Checked)
        {

            cls += "6th,";
        }
        if (cblclass7.Checked)
        {

            cls += "7th,";
        }
        if (cblclass8.Checked)
        {

            cls += "8th,";
        }
        if (cblclass9.Checked)
        {

            cls += "9th,";
        }
        if (cblclass10.Checked)
        {

            cls += "10th,";
        }
        // Remove trailing comma
        if (cls.EndsWith(","))
        {
            cls = cls.Substring(0, cls.Length - 1);
        }

        //subject

        String sub = string.Empty;



        if (chkmarathi.Checked)
        {

            sub += "Marathi,";



        }

        if (chkhindi.Checked)
        {

            sub += "Hindi,";
        }
        if (chksanskrut.Checked)
        {

            sub += "Sanskrut,";
        }
        if (chkgeo.Checked)
        {

            sub += "Geogrophy,";
        }
        if (chkhistory.Checked)
        {

            sub += "History,";
        }
        if (chkmaths.Checked)
        {

            sub += "Maths,";
        }
        if (chkenglish.Checked)
        {

            sub += "English,";
        }
        if (chkscience.Checked)
        {

            sub += "Science,";
        }
        if (chkIT.Checked)
        {

            sub += "IT,";
        }
        if (chkPE.Checked)
        {

            sub += "PE,";
        }
        // Remove trailing comma
        if (sub.EndsWith(","))
        {
            sub = sub.Substring(0, sub.Length - 1);
        }

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("update  AddTeacherinfo set Fullname=@Fullname,MobileNo=@MobileNo,Qualification=@Qualification,EmailID=@EmailID,AllocatedClass=@AllocatedClass,Subject=@Subject,JoinedYear=@JoinedYear,Address=@Address where TeacherID=@TeacherID", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Fullname", txtname.Text);
        cmd.Parameters.AddWithValue("@MobileNo", txtmob.Text);
        cmd.Parameters.AddWithValue("@Qualification", txtqualification.Text);
        cmd.Parameters.AddWithValue("@EmailID", txtemail.Text);
        cmd.Parameters.AddWithValue("@AllocatedClass", cls);
        cmd.Parameters.AddWithValue("@Subject",sub);
        cmd.Parameters.AddWithValue("@JoinedYear", ddljnyear.Text);
        cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@TeacherID", HiddenField1.Value);
        cmd.ExecuteNonQuery();
        bindata();
        con.Close();
        clear();
        Response.Write("<script>alert('Teacher info Updated successfully');</script>");

    }
}
