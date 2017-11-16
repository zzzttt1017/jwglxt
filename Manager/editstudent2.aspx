<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editstudent2.aspx.cs" Inherits="editstudent2" StylesheetTheme="Blue" %>

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
                    <strong><span style="font-size: 14pt; color: #ff3333; font-family: 仿宋_GB2312">编辑学生记录</span></strong></td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right">
                    <strong><span style="font-size: 10pt; color: #3300ff">学 号</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="74px"></asp:TextBox>
                    &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 110px; text-align: right">
                    <strong><span style="font-size: 10pt; color: #0000ff">姓 名</span></strong></td>
                <td style="width: 236px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="91px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="姓名不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr style="font-size: 12pt; color: #000000">
                <td style="width: 110px; height: 22px; text-align: right">
                    <span style="font-size: 10pt; color: #3300ff"><strong>性 别</strong></span></td>
                <td style="width: 236px; height: 22px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="ssex" Text="男" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Size="10pt"
                        GroupName="ssex" Text="女" /></td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="width: 110px; height: 24px; text-align: right">
                    <span style="font-size: 10pt; color: #3300ff"><strong>民 族</strong></span></td>
                <td style="width: 236px; height: 24px">
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
                <td style="width: 110px; text-align: right; height: 26px;">
                    <strong><span style="font-size: 10pt; color: #0000ff">班 号</span></strong></td>
                <td style="width: 236px; height: 26px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="60px"></asp:TextBox></td>
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
