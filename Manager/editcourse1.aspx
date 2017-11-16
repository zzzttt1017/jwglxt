<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editcourse1.aspx.cs" Inherits="editcourse1" StylesheetTheme="Blue" %>

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
        <table align="center" style="background-color: #99ccff">
            <tr>
                <td colspan="2" style="height: 44px; text-align: center">
                    <strong><span style="font-size: 14pt; color: #ff3333; font-family: 仿宋_GB2312">编辑课程记录</span></strong></td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right">
                    <strong><span style="font-size: 10pt; color: #3300ff">课程号</span></strong></td>
                <td style="font-size: 12pt; width: 236px">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="74px"></asp:TextBox>
                    &nbsp; &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="课程号不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr style="font-size: 12pt; color: #3300ff">
                <td style="width: 110px; text-align: right">
                    <span style="font-size: 10pt; color: #3300ff"><strong>课程名</strong></span></td>
                <td style="font-size: 12pt; width: 236px; color: #3300ff">
                    <asp:TextBox ID="TextBox2" runat="server" Width="91px"></asp:TextBox><span style="color: #000000">&nbsp;
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="课程名不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr style="font-weight: bold; font-size: 12pt; color: #000000">
                <td style="width: 110px; height: 22px; text-align: right">
                    <span style="font-size: 10pt; color: #0000ff">上课学期</span></td>
                <td style="width: 236px; color: #000000; height: 22px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="79px"></asp:TextBox></td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="width: 110px; text-align: right">
                    <strong><span style="font-size: 10pt; color: #3300ff">上课地点</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="79px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 37px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
                    &nbsp;
                    <input id="Reset1" runat="server" text="重置" type="reset" value="重置" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
