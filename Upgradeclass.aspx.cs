using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Admin_Upgradeclass : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    void bindata()
    {

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select Studentregno,StudentName,Class  from Addstudentinfo", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridshowstudentinfo.DataSource = ds;
        gridshowstudentinfo.DataBind();

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select * from Addstudentinfo where Class=@Class", con);
        cmd.Parameters.AddWithValue("@Class", ddlclassfrom.SelectedItem.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridshowstudentinfo.DataSource = ds;
        gridshowstudentinfo.DataBind();

    }
    protected void btnGetSelected_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in gridshowstudentinfo.Rows)
        {
           
            CheckBox chkSelect = (CheckBox)row.FindControl("chkSelect");

            if (chkSelect != null && chkSelect.Checked)
            {
              
                Label lblRegNo = (Label)row.FindControl("lblregno");
                Label lblStdName = (Label)row.FindControl("lblstdname");
                Label lblClass = (Label)row.FindControl("lblclass");

                SqlConnection con = new SqlConnection(str);

                SqlCommand cmd = new SqlCommand("Insert into UpgradeClass(Studentname,Class,Standerdftrom,StanderdTo)values(@Studentname,@Class,@From,@To)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@StudentName", lblStdName.Text);
                cmd.Parameters.AddWithValue("@Class", lblClass.Text);
                cmd.Parameters.AddWithValue("@From", lblClass.Text);
                cmd.Parameters.AddWithValue("@To", ddlclassto.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                SqlConnection con1 = new SqlConnection(str);

                SqlCommand cmd1 = new SqlCommand("update  Addstudentinfo set Class=@Class where Studentregno=@Studentregno", con1);
                con1.Open();
                cmd1.Parameters.AddWithValue("@Class", ddlclassto.Text);
                cmd1.Parameters.AddWithValue("@Studentregno", lblRegNo.Text);

                cmd1.ExecuteNonQuery();
                con1.Close();



            }
        }
    }
  

   

    //protected void btnupdate_Click(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(str);

    //    SqlCommand cmd = new SqlCommand("Insert into UpgradeClass(Studentname,Class,Form,too)values(@Studentname,@Class,@From,@To)", con);
    //    con.Open();
    //    cmd.Parameters.AddWithValue("@StudentName", txtstdname.Text);
    //    cmd.Parameters.AddWithValue("@Class", txtclass.Text);
    //    cmd.Parameters.AddWithValue("@From", txtclass.Text);
    //    cmd.Parameters.AddWithValue("@To", ddlclassto.Text);

    //    cmd.ExecuteNonQuery();
    //    con.Close();

    //    SqlConnection con1 = new SqlConnection(str);

    //    SqlCommand cmd1 = new SqlCommand("update  Addstudentinfo set Class=@Class where Studentregno=@Studentregno", con1);
    //    con1.Open();
    //    cmd1.Parameters.AddWithValue("@Class", ddlclassto.Text);
    //    cmd1.Parameters.AddWithValue("@Studentregno", lblregno.Text);

    //    cmd1.ExecuteNonQuery();
    //    con1.Close();
       
    //}
}
