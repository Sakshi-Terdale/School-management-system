using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Admin_FeeCollection : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            {
            btnupdate.Visible = false;
            labelclass.Visible = false;
          
           
        }
    }


    private void bindfees()
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("select * from StudentFees where  Studentregno=@stdregno", con);
        cmd.Parameters.AddWithValue("@stdregno", txtRegNo.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gridstdfee.DataSource = dt;
        gridstdfee.DataBind();

       
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        btnupdate.Visible = true;
        btnSubmit.Visible = false;
        txtserachregno.Text = "";
        
        Button btn = sender as Button;

        GridViewRow r = (GridViewRow)btn.NamingContainer;


        Label lregno = (Label)r.FindControl("lblstdno");
        txtRegNo.Text = lregno.Text;


        Label lname = (Label)r.FindControl("lblstdnm");
        txtstudentnm.Text = lname.Text;

        Label laadhar = (Label)r.FindControl("lblaadharcard");
        txtaadhar.Text = laadhar.Text;
        Label lfeeamount = (Label)r.FindControl("lbfeepamount");
        txtFeeAmount.Text = lfeeamount.Text;
        Label lpamount= (Label)r.FindControl("lblpamount");
        txtPaidAmount.Text = lpamount.Text;


    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("INSERT INTO StudentFees (StudentRegNo,Studentname,Aadharcard, FeeAmount, PaidAmount, PaymentDate, PaymentMode) VALUES (@StudentRegNo,@Studentname,@Aadharcard,@FeeAmount, @PaidAmount, @PaymentDate, @PaymentMode)", con);

        cmd.Parameters.AddWithValue("@StudentRegNo", txtRegNo.Text);
        cmd.Parameters.AddWithValue("@Studentname", txtstudentnm.Text);
        cmd.Parameters.AddWithValue("@Aadharcard", txtaadhar.Text);
        cmd.Parameters.AddWithValue("@FeeAmount", Convert.ToDecimal(txtFeeAmount.Text));
        cmd.Parameters.AddWithValue("@PaidAmount", Convert.ToDecimal(txtPaidAmount.Text));
        cmd.Parameters.AddWithValue("@PaymentDate", DateTime.Now);
        cmd.Parameters.AddWithValue("@PaymentMode", ddlPaymentMode.SelectedItem.Text);
        

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        clear();
        Response.Write("<script>alert('Fee Add successfully');</script>");

    }


    protected void txtRegNo_TextChanged(object sender, EventArgs e)
    {
        UpdatePanel1.Update();
        UpdatePanel2.Update();
        UpdatePanel3.Update();
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("select * from Addstudentinfo where Studentregno=@Studentregno", con);
        cmd.Parameters.AddWithValue("@Studentregno", txtRegNo.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
       
        

        if (ds.Tables[0].Rows.Count > 0)
        {

            txtstudentnm.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
            txtaadhar.Text = ds.Tables[0].Rows[0]["Aadharcard"].ToString();
        }
    }

   

   

    protected void btnupdate_Click1(object sender, EventArgs e)
    {
        btnupdate.Visible = false;
        btnSubmit.Visible = true;

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("update  StudentFees set PaidAmount=@PaidAmount,FeeAmount=@FeeAmount,PaymentMode=@PaymentMode,PaymentDate=@PaymentDate where StudentRegNo=@StudentRegNo", con);
        con.Open();
        cmd.Parameters.AddWithValue("@PaidAmount", txtPaidAmount.Text);
        cmd.Parameters.AddWithValue("@FeeAmount", txtFeeAmount.Text);
        cmd.Parameters.AddWithValue("@PaymentMode", ddlPaymentMode.Text);
       
        cmd.Parameters.AddWithValue("@StudentRegNo", txtRegNo.Text);

        cmd.Parameters.AddWithValue("@PaymentDate", DateTime.Now);
        cmd.ExecuteNonQuery();
        bindfees();
        con.Close();
        clear();


        Response.Write("<script>alert('Update Collection successfully');</script>");
    }

    void clear()
    {

        txtRegNo.Text = "";
        txtaadhar.Text = "";
        txtPaidAmount.Text = "";
        txtFeeAmount.Text = "";
        txtstudentnm.Text = "";
        ddlPaymentMode.SelectedIndex = 0;


    }

   

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        labelclass.Visible = true;

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand(" select * from StudentFees   where StudentRegNo=@StudentRegNo", con);
        cmd.Parameters.AddWithValue("@StudentRegNo", txtserachregno.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        
        gridstdfee.DataSource = ds;
        gridstdfee.DataBind();

        if (ds.Tables[0].Rows.Count > 0)
        {
            lblstdname.Text = ds.Tables[0].Rows[0]["Studentname"].ToString();


        }
    }
}
