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

public partial class querymycourse : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string mysql = "SELECT * FROM course WHERE tno='" + Session["uno"] + "'";
            myds = mydb.ExecuteQuery(mysql, "course");
            if (myds.Tables["course"].Rows.Count > 0)
            {
                GridView1.DataSource = myds.Tables["course"];
                GridView1.DataBind();
            }
            else
                Response.Redirect("~/dispinfo.aspx?info=你没有安排任何教学任务!");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string mysql = "SELECT * FROM course WHERE tno = '" + Session["uno"] + "'";
        myds = mydb.ExecuteQuery(mysql, "course");
        GridView1.DataSource = myds.Tables["course"];
        GridView1.DataBind();
    }
}
