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

public partial class editstudent1 : System.Web.UI.Page
{
    string mysql;
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {  //分页
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {  //编辑记录
        string sno = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        Response.Redirect("editstudent2.aspx?sno=" + sno);

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {  //删除记录
        string sno = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string mysql;
        mysql = "DELETE FROM student WHERE sno='" + sno + "'";
        mydb.ExecuteNonQuery(mysql);
        bind();
    }
    public void bind()
    {
        mysql = Session["sql"].ToString();
        myds = mydb.ExecuteQuery(mysql, "student");
        GridView1.DataSource = myds.Tables["student"];
        GridView1.DataKeyNames = new string[] { "sno" };
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dispinfo.aspx?info=学生记录编辑完毕!");
    }
}
