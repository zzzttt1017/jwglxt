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

public partial class addstudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
        CommDB mydb = new CommDB();
        string mysql, sn = "";
        mysql = "SELECT * FROM student WHERE sno='" + TextBox1.Text + "'";
        i = mydb.Rownum(mysql, "student", ref sn);
        if (i > 0)
            Response.Redirect("~/dispinfo.aspx?info=学号重复,不能添加该学生记录!");
        else
        {
            string xb;
            if (RadioButton1.Checked)
                xb = "男";
            else if (RadioButton2.Checked)
                xb = "女";
            else
                xb = "";
            mysql = "INSERT INTO student(sno,sname,ssex,snation,sclass,spass) VALUES('" +
                TextBox1.Text + "','" + TextBox2.Text + "','" + xb + "','" +
                DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" +
                TextBox1.Text + "')";           //刚添加时密码同学号
            mydb.ExecuteNonQuery(mysql); ;
            Response.Redirect("~/dispinfo.aspx?info=学生记录已成功添加!");
        }
    }
}
