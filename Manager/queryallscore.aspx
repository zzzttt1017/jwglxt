<%@ Page Language="C#" AutoEventWireup="true" CodeFile="queryallscore.aspx.cs" Inherits="queryallscore" StylesheetTheme="Blue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="link.css" rel="stylesheet" type="text/css" />
    <link href="../link.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 364px; background-color: #99ccff">
            <tr>
                <td colspan="2" style="height: 41px; text-align: center">
                    <strong><span style="font-size: 14pt; color: #ff0099; font-family: 仿宋_GB2312">查找学生成绩</span></strong></td>
            </tr>
            <tr>
                <td style="width: 488px; text-align: right">
                    <strong><span style="font-size: 10pt; color: #0000ff">学 号</span></strong></td>
                <td style="width: 597px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="88px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 488px; text-align: right">
                    <span style="font-size: 10pt; color: #0000ff"><strong>姓 名</strong></span></td>
                <td style="width: 597px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="89px"></asp:TextBox></td>
            </tr>
            <tr style="font-size: 12pt; color: #0000ff">
                <td style="width: 488px; text-align: right; height: 26px;">
                    <span style="font-size: 10pt;"><strong>课程号</strong></span></td>
                <td style="width: 597px; color: #000000; height: 26px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="86px"></asp:TextBox></td>
            </tr>
            <tr style="font-size: 12pt; color: #000000">
                <td style="width: 488px; text-align: right">
                    <span style="color: #0000ff; font-size: 10pt;"><strong>课程名</strong></span></td>
                <td style="width: 597px; color: #000000">
                    <asp:TextBox ID="TextBox4" runat="server" Width="85px"></asp:TextBox></td>
            </tr>
            <tr style="font-size: 12pt; color: #000000">
                <td colspan="2" style="height: 39px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
                    &nbsp; &nbsp;&nbsp;
                    <input id="Button2" runat="server" text="重置" type="reset" value="重置" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
