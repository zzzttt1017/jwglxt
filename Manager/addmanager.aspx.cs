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

public partial class addmanager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
        CommDB mydb = new CommDB();
        string mysql, sn = "";
        mysql = "SELECT * FROM manager WHERE mno='" + TextBox1.Text + "'";
        i = mydb.Rownum(mysql, "manager", ref sn);
        if (i > 0)
            Response.Redirect("~/dispinfo.aspx?info=管理员编程号重复,不能添加该课程记录!");
        else
        {
            mysql = "INSERT INTO manager(mno,mname,mpass) VALUES('" +
                TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox1.Text + "')";
            mydb.ExecuteNonQuery(mysql);
            Response.Redirect("~/dispinfo.aspx?info=管理员记录已成功添加!");
        }
    }
}
