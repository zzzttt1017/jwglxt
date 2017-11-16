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

public partial class addcourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 下载于www.51aspx.com
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
        CommDB mydb = new CommDB();
        string mysql, sn = "";
        mysql = "SELECT * FROM course WHERE cno='" + TextBox1.Text + "'";
        i = mydb.Rownum(mysql, "course", ref sn);
        if (i > 0)
            Response.Redirect("~/dispinfo.aspx?info=课程号重复,不能添加该课程记录!");
        else
        {
            mysql = "INSERT INTO course(cno,cname,ctime,cplace,tno,tname) VALUES('" +
                TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" +
                TextBox4.Text + "','','')";
            mydb.ExecuteNonQuery(mysql); ;
            Response.Redirect("~/dispinfo.aspx?info=课程记录已成功添加!");
        }
    }
}
