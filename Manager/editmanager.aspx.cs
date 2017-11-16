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

public partial class editmanager : System.Web.UI.Page
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
        Response.Redirect("~/dispinfo.aspx?info=管理员记录编辑完毕!");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {   //分页
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {  //删除记录
        string mno = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string mysql;
        mysql = "DELETE FROM manager WHERE mno='" + mno + "'";
        mydb.ExecuteNonQuery(mysql);
        bind();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {   //编辑记录
        string mno = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        Response.Redirect("editmanager1.aspx?mno=" + mno);
    }
    public void bind()
    {
        mysql = "SELECT * FROM manager ORDER BY mno";
        myds = mydb.ExecuteQuery(mysql, "manager");
        GridView1.DataSource = myds.Tables["manager"];
        GridView1.DataKeyNames = new string[] { "mno" };
        GridView1.DataBind();
    }
}
