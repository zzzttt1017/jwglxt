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

public partial class plancourse1 : System.Web.UI.Page
{
    string mysql;
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string cname = Request.QueryString["cname"];
            Label1.Text = "(" + cname + ")";
            bind();
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //编辑记录
        string tno = GridView1.DataKeys[e.NewEditIndex][0].ToString();  //获取当前行的tno值
        string tname = GridView1.DataKeys[e.NewEditIndex][1].ToString();//获取当前行的tname值
        string cno = Request.QueryString["cno"];
        mysql = "UPDATE course SET tno='" + tno + "',tname='" +
            tname + "' WHERE cno='"+ cno + "'";
        mydb.ExecuteNonQuery(mysql);
        Response.Redirect("plancourse.aspx");

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //分页
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    public void bind()
    {
        mysql = "SELECT * FROM teacher";
        myds = mydb.ExecuteQuery(mysql, "teacher");
        GridView1.DataSource = myds.Tables["teacher"];
        GridView1.DataKeyNames = new string[] { "tno","tname" };
        GridView1.DataBind();
    }
}
