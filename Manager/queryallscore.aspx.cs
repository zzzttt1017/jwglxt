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

public partial class queryallscore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 下载于www.51aspx.com
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string condstr = "",mysql;
        //以下构造条件表达式condstr
        if (TextBox1.Text != "")
            condstr = "sno Like '" + TextBox1.Text + "%'";
        if (TextBox2.Text != "")
            if (condstr == "")
                condstr = "sname Like '" + TextBox2.Text  + "%'";
            else
                condstr = condstr + " AND sname Like '" + TextBox2.Text + "%'";
        if (TextBox3.Text != "")
            if (condstr == "")
                condstr = "cno LIKE '" + TextBox3.Text + "%'";
            else
                condstr = condstr + " AND cno LIKE '" + TextBox3.Text + "%'";
        if (TextBox4.Text != "")
            if (condstr == "")
                condstr = "cname LIKE '" + TextBox4.Text + "%'";
            else
                condstr = condstr + " AND cname LIKE '" + TextBox4.Text + "%'";
        if (condstr == "")
            mysql = "SELECT * FROM score";
        else
            mysql = "SELECT * FROM score WHERE "+ condstr;
        Response.Redirect("queryallscore1.aspx?mysql=" + mysql);
    }
}
