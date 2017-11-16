<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="teachermenu.aspx.cs" Inherits="teachermenu" Title="欢迎使用学生成绩管理系统" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 55px">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="隶书" Font-Size="14pt"
                    ForeColor="#CC9966" Width="337px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 30%; height: 400px; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="仿宋_GB2312"
                    Font-Size="11pt">
                    <Nodes>
                        <asp:TreeNode Target="Iframe1" Text="课程管理" Value="课程管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统">
                            <asp:TreeNode Target="Iframe1" Text="查看我的课程" Value="查看我的课程" NavigateUrl="~/Teacher/querymycourse.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="查看选课学生" Value="查看选课学生" NavigateUrl="~/Teacher/querymystudent.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="成绩管理" Value="成绩管理" Target="Iframe1" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统">
                            <asp:TreeNode NavigateUrl="~/Teacher/inputstudentscore.aspx" Target="Iframe1" Text="输入学生成绩" Value="输入学生成绩">
                            </asp:TreeNode>
                            <asp:TreeNode Target="Iframe1" Text="查看学生成绩" Value="查看学生成绩" NavigateUrl="~/Teacher/querystudentscore.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="密码管理" Value="密码管理" Target="Iframe1" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统">
                            <asp:TreeNode NavigateUrl="~/Teacher/updateteacherpass.aspx" Target="Iframe1" Text="更改我的密码"
                                Value="更改我的密码"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#009900"
                    NavigateUrl="~/Default.aspx" Target="_self">退出本系统</asp:HyperLink></td>
            <td style="width: 99%; height: 400px">
                <iframe id="Iframe1" name="Iframe1" src="dispinfo.aspx?info=欢迎使用本系统" style="width: 99%;
                    height: 99%"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>

