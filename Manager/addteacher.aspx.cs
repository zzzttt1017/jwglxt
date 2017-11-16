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

public partial class addteacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
        CommDB mydb = new CommDB();
        string mysql, sn = "";
        mysql = "SELECT * FROM teacher WHERE tno='" + TextBox1.Text + "'";
        i = mydb.Rownum(mysql, "teacher", ref sn);
        if (i > 0)
            Response.Redirect("~/dispinfo.aspx?info=编号重复,不能添加该教师记录!");
        else
        {
            string xb;
            if (RadioButton1.Checked)
                xb = "男";
            else if (RadioButton2.Checked)
                xb = "女";
            else
                xb = "";
            mysql = "INSERT INTO teacher(tno,tname,tsex,tdepart,tpass) VALUES('" +
                TextBox1.Text + "','" + TextBox2.Text + "','" + xb + "','" +
                TextBox3.Text + "','" + TextBox1.Text + "')";
            //刚添加时密码同编号
            mydb.ExecuteNonQuery(mysql);
            Response.Redirect("~/dispinfo.aspx?info=教师记录已成功添加!");
        }
    }
}
