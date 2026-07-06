using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShowteacherInfo : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["Schooldb"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

          
        }
    }

    void bindata()
    {

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand("select * from AddTeacherinfo", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gridshowteacherinfo.DataSource = ds;
        gridshowteacherinfo.DataBind();

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string query = "SELECT * FROM AddTeacherinfo";

        if (txtclass.Text!= "" && ddljnyear.SelectedItem.Text != "--select Year--")
        {
            query += " where AllocatedClass LIKE '%" + txtclass.Text +"%' AND JoinedYear = '" + ddljnyear.SelectedItem.Text + "'";
        }
        else if (txtclass.Text != "")
        {
            query += " where AllocatedClass LIKE '%" + txtclass.Text + "%'";
        }
        else if (ddljnyear.SelectedItem.Text != "--select Year--")
        {

            query += " where JoinedYear='" + ddljnyear.SelectedItem.Text + "'";

        }

        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            gridshowteacherinfo.DataSource = ds;
            gridshowteacherinfo.DataBind();
        }
    }
}