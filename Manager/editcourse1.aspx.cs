using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

public partial class editcourse1 : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    string mysql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataSet myds = new DataSet();
            string cno = Request.QueryString["cno"];
            mysql = "SELECT * FROM course WHERE cno='" + cno + "'";
            myds = mydb.ExecuteQuery(mysql, "course");
            DataRow mydr = myds.Tables["course"].Rows[0];
            TextBox1.Text = mydr["cno"].ToString();
            TextBox2.Text = mydr["cname"].ToString();
            TextBox3.Text = mydr["ctime"].ToString();
            TextBox4.Text = mydr["cplace"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mysql = "UPDATE course SET cname = '" + TextBox2.Text + 
            "',ctime ='" + TextBox3.Text + "',cplace='" + TextBox4.Text +
            "' WHERE cno='" + TextBox1.Text + "'";
        mydb.ExecuteNonQuery(mysql);
        Response.Redirect("editcourse.aspx");
    }
}
