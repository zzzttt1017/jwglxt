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

public partial class editstudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string condstr = "",xb,mysql;
        //以下构造条件表达式condstr
        if (TextBox1.Text != "")
            condstr = "sno Like '" + TextBox1.Text + "%'";
        if (TextBox2.Text != "")
            if (condstr == "")
                condstr = "sname Like '" + TextBox2.Text  + "%'";
            else
                condstr = condstr + " AND sname Like '" + TextBox2.Text + "%'";
        if (RadioButton1.Checked)
            xb = "男";
        else if (RadioButton2.Checked)
            xb = "女";
        else
            xb = "";
        if (xb != "")
            if (condstr=="")
                condstr = "ssex='" + xb + "'";
            else
                condstr = condstr + " AND ssex='" + xb + "'";
        if (TextBox3.Text != "")
            if (condstr == "")
                condstr = "snation LIKE '" + TextBox3.Text + "%'";
            else
                condstr = condstr + " AND snation LIKE '" + TextBox3.Text + "%'";
        if (TextBox4.Text != "")
            if (condstr == "")
                condstr = "sclass LIKE '" + TextBox4.Text + "%'";
            else
                condstr = condstr + " AND sclass LIKE '" + TextBox4.Text + "%'";
        if (condstr == "")
            mysql = "SELECT * FROM student ORDER BY sno";
        else
            mysql = "SELECT * FROM student WHERE "+ condstr + " ORDER BY sno";
        Session["sql"] = mysql;   //用会话保存SQL语句
        Response.Redirect("editstudent1.aspx");
    }
}
