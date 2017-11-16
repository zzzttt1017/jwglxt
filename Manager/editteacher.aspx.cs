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

public partial class editteacher : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dispinfo.aspx?info=教师记录编辑完毕!");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    { //分页
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {  //编辑记录
        string tno = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        Response.Redirect("editteacher1.aspx?tno=" + tno);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {   //删除记录
        string tno = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string mysql;
        mysql = "DELETE FROM teacher WHERE tno='" + tno + "'";
        mydb.ExecuteNonQuery(mysql);
        bind();
    }
    public void bind()
    {
        mysql = "SELECT * FROM teacher ORDER BY tno";
        myds = mydb.ExecuteQuery(mysql, "teacher");
        GridView1.DataSource = myds.Tables["teacher"];
        GridView1.DataKeyNames = new string[] { "tno" };
        GridView1.DataBind();
    }
}
