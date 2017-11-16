<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editstudent.aspx.cs" Inherits="editstudent" StylesheetTheme="Blue" %>

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
        <table align="center" style="background-color: #99ccff; width: 364px;">
            <tr>
                <td colspan="2" style="text-align: center; height: 41px;">
                    <strong><span style="font-size: 14pt; color: #ff0099; font-family: 仿宋_GB2312">查找要编辑的学生记录</span></strong></td>
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
            <tr>
                <td style="width: 488px; height: 21px; text-align: right">
                    <strong><span style="font-size: 10pt; color: #0000ff">性 别</span></strong></td>
                <td style="width: 597px; height: 21px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="10pt"
                        Text="男" />&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="10pt"
                        Text="女" /></td>
            </tr>
            <tr>
                <td style="width: 488px; text-align: right">
                    <strong><span style="font-size: 10pt; color: #0000ff">民 族</span></strong></td>
                <td style="width: 597px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="86px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 488px; text-align: right">
                    <span style="font-size: 10pt; color: #0000ff"><strong>班 号</strong></span></td>
                <td style="width: 597px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="85px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 39px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; 
                    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
                    &nbsp; &nbsp;&nbsp; 
                    <input type="reset" ID="Button2" runat="server" Text="重置" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
