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

public partial class querystudentscore : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    string mysql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            mysql = "SELECT cno FROM course WHERE tno='" + Session["uno"] + "'";
            myds = mydb.ExecuteQuery(mysql, "course");
            if (myds.Tables["course"].Rows.Count > 0)
            {
                DropDownList1.DataSource = myds.Tables["course"];
                DropDownList1.DataTextField = "cno";
                DropDownList1.DataBind();
            }
            else
                Response.Redirect("~/dispinfo.aspx?info=没有安排任何上课课程!");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mysql;
        mysql = "SELECT * FROM score WHERE tno='" + Session["uno"] + "'AND cno ='" + DropDownList1.SelectedValue + "' ORDER BY sno";
        myds = mydb.ExecuteQuery(mysql, "score");
        if (myds.Tables["score"].Rows.Count > 0)
        {
            GridView1.DataSource = myds.Tables["score"];
            GridView1.DataBind();
        }
        else
            Response.Write("<script>alert('没有学生选修或提交该课程!')</script>");
    }
}
