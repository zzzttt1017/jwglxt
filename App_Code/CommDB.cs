using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// CommDB 的摘要说明
/// </summary>
public class CommDB
{
	public CommDB()   //默认构造函数
	{}
    //******************************************************************
    //返回SELECT语句执行后记录集中的行数
    //******************************************************************
    public int Rownum(string sql,string tname,ref string sname)
    {
        int i=0;
        string mystr = ConfigurationManager.AppSettings["myconnstring"];
        SqlConnection myconn = new SqlConnection();
        myconn.ConnectionString = mystr;
        myconn.Open();
        SqlCommand mycmd = new SqlCommand(sql, myconn);
        SqlDataReader myreader = mycmd.ExecuteReader();
        while (myreader.Read())　　//循环读取信息
        {
            sname = myreader[0].ToString();
            i++;
        }
        myconn.Close();
        return i;
        // 下载于www.51aspx.com
    }
    //******************************************************************
    //执行SQL语句，返回是否成功执行。SQL语句最好是如下：
    //UPDATE 表名 SET 字段名=value,字段名=value WHERE 字段名=value
    //DELETE FROM 表名 WHERE 字段名=value
    //INSERT INTO 表名 (字段名,字段名) values (value,value)
    //******************************************************************
    public Boolean ExecuteNonQuery(string sql)
    {
        string mystr = ConfigurationManager.AppSettings["myconnstring"];
        SqlConnection myconn = new SqlConnection();
        myconn.ConnectionString = mystr;
        myconn.Open();
        SqlCommand mycmd = new SqlCommand(sql,myconn);
        try
        {
            mycmd.ExecuteNonQuery();
            myconn.Close();
        }
        catch
        {
            myconn.Close();
            return false;
        }
        return true;
    }
    //*******************************************************************
    //执行SELECT语句，返回DataSet对象
    //*******************************************************************
    public DataSet ExecuteQuery(string sql,string tname)
    {
        string mystr = ConfigurationManager.AppSettings["myconnstring"];
        SqlConnection myconn = new SqlConnection();
        myconn.ConnectionString = mystr;
        myconn.Open();
        SqlDataAdapter myda = new SqlDataAdapter(sql,myconn);
        DataSet myds = new DataSet();
        myda.Fill(myds,tname);
        myconn.Close();
        return myds;
    }
    //*******************************************************************
    /// 实现随机验证码:返回生成的随机数
    //*******************************************************************
    public string RandomNum(int n)      //n为验证码的位数
    {
        //定义一个包括数字、大写英文字母和小写英文字母的字符串
        string strchar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H," + 
            "I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z," +
            "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
        //将strchar字符串转化为数组
        //String.Split方法返回包含此实例中的子字符串的String数组。
        string[] arry = strchar.Split(',');
        string num = "";
        //记录上次随机数值，尽量避免产生几个一样的随机数           
        int temp = -1;
        //采用一个简单的算法以保证生成随机数的不同
        Random rand = new Random();
        for (int i = 1; i < n + 1; i++)
        {
            if (temp != -1)
            {
                //unchecked 关键字用于取消整型算术运算和转换的溢出检查。
                //DateTime.Ticks 属性获取表示此实例的日期和时间的刻度数。
                rand = new Random(i * temp * unchecked((int)DateTime.Now.Ticks));
            }
            //Random.Next 方法返回一个小于所指定最大值的非负随机数。
            int t = rand.Next(61);
            if (temp != -1 && temp == t)
            {
                return RandomNum(n);
            }
            temp = t;
            num += arry[t];
        }
        return num;         //返回生成的随机数
    }
}
