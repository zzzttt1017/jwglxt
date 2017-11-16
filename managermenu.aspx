<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="managermenu.aspx.cs" Inherits="managermenu" Title="欢迎使用学生成绩管理系统" %>
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
                        <asp:TreeNode Text="学生信息管理" Value="学生信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/addstudent.aspx" Target="Iframe1" Text="添加学生信息" Value="添加学生信息">
                            </asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Manager/editstudent.aspx" Target="Iframe1" Text="编辑学生信息" Value="编辑学生信息">
                            </asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="课程信息管理" Value="课程信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/addcourse.aspx" Target="Iframe1" Text="添加课程信息" Value="添加课程信息">
                            </asp:TreeNode>
                            <asp:TreeNode Text="编辑课程信息" Value="编辑课程信息" NavigateUrl="~/Manager/editcourse.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="教师信息管理" Value="教师信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode NavigateUrl="~/Manager/addteacher.aspx" Target="Iframe1" Text="添加教师信息"
                                Value="添加教师信息"></asp:TreeNode>
                            <asp:TreeNode Text="编辑教师信息" Value="编辑教师信息" NavigateUrl="~/Manager/editteacher.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="管理员信息管理" Value="管理员信息管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="添加管理员信息" Value="添加管理员信息" Target="Iframe1" NavigateUrl="~/Manager/addmanager.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="编辑管理员信息" Value="编辑管理员信息" Target="Iframe1" NavigateUrl="~/Manager/editmanager.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="安排课程管理" Value="安排课程管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="安排课程任课教师" Value="安排课程任课教师" Target="Iframe1" NavigateUrl="~/Manager/plancourse.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="学生成绩管理" Value="学生成绩管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="查询学生成绩" Value="查询学生成绩" Target="Iframe1" NavigateUrl="~/Manager/queryallscore.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="我的密码管理" Value="我的密码管理" NavigateUrl="~/dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="更改我的密码" Value="更改我的密码" Target="Iframe1" NavigateUrl="~/Manager/updatemanagerpass.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#009900"
                    NavigateUrl="~/Default.aspx" Target="_self">退出本系统</asp:HyperLink></td>
            <td style="width: 99%; height: 400px">
                <iframe id="Iframe1" name="Iframe1" src="dispinfo.aspx?info=欢迎使用本系统" style="width: 99%;
                    height: 99%"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>

