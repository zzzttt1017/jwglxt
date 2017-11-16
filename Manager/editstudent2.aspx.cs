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
using System.Data.SqlClient;

public partial class editstudent2 : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    string mysql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataSet myds = new DataSet();
            string sno = Request.QueryString["sno"];
            mysql = "SELECT * FROM student WHERE sno='" + sno + "'";
            myds = mydb.ExecuteQuery(mysql, "student");
            DataRow mydr = myds.Tables["student"].Rows[0];
            TextBox1.Text = mydr["sno"].ToString();
            TextBox2.Text = mydr["sname"].ToString();
            string xb = mydr["ssex"].ToString();
            if (xb == "男")
                RadioButton1.Checked = true;
            else if (xb == "女")
                RadioButton2.Checked = true;
            DropDownList1.Text = mydr["snation"].ToString();
            TextBox3.Text = mydr["sclass"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string xb;
        if (RadioButton1.Checked)
            xb = "男";
        else if (RadioButton2.Checked)
            xb = "女";
        else
            xb = "";
        mysql = "UPDATE student SET sname = '" + TextBox2.Text + "',ssex ='" + xb +
            "',snation='" + DropDownList1.SelectedValue + "',sclass = '" +
            TextBox3.Text + "' WHERE sno='" + TextBox1.Text + "'";
        mydb.ExecuteNonQuery(mysql);
        Response.Redirect("editstudent1.aspx");
    }
}
