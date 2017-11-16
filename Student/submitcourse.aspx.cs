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

public partial class submitcourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mysql;
        CommDB mydb = new CommDB();
        mysql = "INSERT INTO score(sno,sname,cno,cname,degree,tno) " +
            "SELECT sno,'" + Session["uname"] + "',cno,cname,0,tno FROM selcourse" +
            " WHERE sno = '" + Session["uno"] + "' AND sel = '√'";
        mydb.ExecuteNonQuery(mysql);  //将该学生的选课复制到score表中
        mysql = "DELETE FROM selcourse WHERE sno = '" + Session["uno"] + "'";
        mydb.ExecuteNonQuery(mysql); //从selcourse表中删除该学生的所有课程
        Server.Transfer("~/dispinfo.aspx?info=" + "你的选课已成功提交!");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("selectcourse.aspx");
    }
}
