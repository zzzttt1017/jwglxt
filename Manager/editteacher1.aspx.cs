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

public partial class editteacher1 : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    string mysql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataSet myds = new DataSet();
            string tno = Request.QueryString["tno"];
            mysql = "SELECT * FROM teacher WHERE tno='" + tno + "'";
            myds = mydb.ExecuteQuery(mysql, "teacher");
            DataRow mydr = myds.Tables["teacher"].Rows[0];
            TextBox1.Text = mydr["tno"].ToString();
            TextBox2.Text = mydr["tname"].ToString();
            string xb = mydr["tsex"].ToString();
            if (xb == "男")
                RadioButton1.Checked = true;
            else if (xb == "女")
                RadioButton2.Checked=true;
            TextBox3.Text = mydr["tdepart"].ToString();
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
        mysql = "UPDATE teacher SET tname = '" + TextBox2.Text +
            "',tsex ='" + xb + "',tdepart='" + TextBox3.Text +
            "' WHERE tno='" + TextBox1.Text + "'";
        mydb.ExecuteNonQuery(mysql);
        Response.Redirect("editteacher.aspx");
    }
}
