using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Showstudentinfo : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    void bindata()
    {

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select * from Addstudentinfo", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridshowstudentinfo.DataSource = ds;
        gridshowstudentinfo.DataBind();

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {

        string query = "SELECT * FROM Addstudentinfo";

        if (ddlclass.SelectedItem.Text != "--select Class--" && txtcast.Text != "")
        {
            query += " where Class='" + ddlclass.SelectedItem.Text + "' AND StudentCast = '" + txtcast.Text + "'";
        }
        else if (ddlclass.SelectedItem.Text != "--select Class--")
        {
            query += " where Class='" + ddlclass.SelectedItem.Text + "'";
        }
        else if (txtcast.Text != "")
        {

            query += " where StudentCast='" + txtcast.Text + "'";

        }

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            gridshowstudentinfo.DataSource = ds;
            gridshowstudentinfo.DataBind();
        }
    }
}
