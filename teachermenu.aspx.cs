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

public partial class teachermenu : System.Web.UI.Page
{// 下载于www.51aspx.com
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "教师端→欢迎你:" + Session["uname"] + "(" + Session["uno"] + ")";
    }
}
