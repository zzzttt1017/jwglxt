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

public partial class queryallscore1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            bind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //分页
        GridView1.PageIndex = e.NewPageIndex;
        bind();

    }
    public void bind()
    {
        CommDB mydb = new CommDB();
        string mysql = Request.QueryString["mysql"];
        DataSet myds = new DataSet();
        myds = mydb.ExecuteQuery(mysql, "score");
        GridView1.DataSource = myds.Tables["score"];
        GridView1.DataKeyNames = new string[] { "sno" };
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dispinfo.aspx?info=学生成绩查看完毕!");
    }
}
