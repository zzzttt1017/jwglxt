<%@ Page Language="C#" AutoEventWireup="true" CodeFile="submitcourse.aspx.cs" Inherits="submitcourse" StylesheetTheme="Blue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="font-size: 12pt">
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 229px; margin-top: 100px;">
            <tr>
                <td style="width: 219px; text-align: center; background-color: #ccffff; height: 51px;">
                    <span style="color: #0000ff; font-family: 楷体_GB2312"><strong>选修课程一旦提交，不能更改，真的要提交吗?</strong></span></td>
            </tr>
            <tr>
                <td style="width: 219px; text-align: center; height: 53px;">
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" /></td>
            </tr>
        </table>
    
    </div>
   </form>
</body>
</html>
