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

public partial class listcourse : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string mysql;
            mysql = "SELECT * FROM score WHERE sno='" + Session["uno"] + "'";
            myds = mydb.ExecuteQuery(mysql, "score");
            if (myds.Tables["score"].Rows.Count > 0)
            {
                GridView1.DataSource = myds.Tables["score"];
                GridView1.DataBind();
            }
            else
                Response.Redirect("~/dispinfo.aspx?info=你没选修任何课程或选课没有提交");
            }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string mysql = "SELECT * FROM score WHERE sno = '" + Session["uno"] + "'";
        myds = mydb.ExecuteQuery(mysql, "score");
        GridView1.DataSource = myds.Tables["score"];
        GridView1.DataBind();
    }
}
