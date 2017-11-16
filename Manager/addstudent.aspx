<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addstudent.aspx.cs" Inherits="addstudent" StylesheetTheme="Blue" %>

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
                <td colspan="2" style="height: 44px; text-align: center;">
                    <strong><span style="font-size: 14pt; color: #ff3333; font-family: 仿宋_GB2312">添加新的学生记录</span></strong></td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #3300ff">学 号</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="74px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="TextBox1" ErrorMessage="学号不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #0000ff">姓 名</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="91px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="姓名不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 110px; height: 22px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #3300ff">性 别</span></strong></td>
                <td style="width: 236px; height: 22px;">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="ssex" Text="男" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="ssex" Text="女" /></td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #3300ff">民 族</span></strong></td>
                <td style="width: 236px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>汉族</asp:ListItem>
                        <asp:ListItem>回族</asp:ListItem>
                        <asp:ListItem>满族</asp:ListItem>
                        <asp:ListItem>朝鲜族</asp:ListItem>
                        <asp:ListItem>土家族</asp:ListItem>
                        <asp:ListItem>其他</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right;">
                    <strong><span style="font-size: 10pt; color: #0000ff">班 号</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="60px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 37px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />&nbsp;&nbsp; 
                    <input type="reset" runat="server" Text="重置" id="Reset1" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
