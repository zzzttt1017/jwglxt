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

public partial class editmanager1 : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    string mysql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataSet myds = new DataSet();
            string mno = Request.QueryString["mno"];
            mysql = "SELECT * FROM manager WHERE mno='" + mno + "'";
            myds = mydb.ExecuteQuery(mysql, "manager");
            DataRow mydr = myds.Tables["manager"].Rows[0];
            TextBox1.Text = mydr["mno"].ToString();
            TextBox2.Text = mydr["mname"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mysql = "UPDATE manager SET mname = '" + TextBox2.Text +
            "' WHERE mno='" + TextBox1.Text + "'";
        mydb.ExecuteNonQuery(mysql);
        Response.Redirect("editmanager.aspx");
    }
}
