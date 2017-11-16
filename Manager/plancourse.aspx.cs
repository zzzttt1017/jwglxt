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

public partial class plancourse : System.Web.UI.Page
{
    string mysql;
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            bind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dispinfo.aspx?info=上课教师安排完毕!");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //分页
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //编辑记录
        string cno = GridView1.DataKeys[e.NewEditIndex][0].ToString();      //获取当前行的cno值
        string cname = GridView1.DataKeys[e.NewEditIndex][1].ToString();    //获取当前行的cname值
        Response.Redirect("plancourse1.aspx?cno=" + cno + "&cname=" + cname);
    }
    public void bind()
    {
        mysql = "SELECT * FROM course";
        myds = mydb.ExecuteQuery(mysql, "course");
        GridView1.DataSource = myds.Tables["course"];
        GridView1.DataKeyNames = new string[] { "cno","cname" };
        GridView1.DataBind();
    }
    
}
