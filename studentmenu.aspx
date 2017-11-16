<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studentmenu.aspx.cs" Inherits="studentmenu" Title="欢迎使用学生成绩管理系统" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  style="width: 100%; height: 55px">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC9966" Width="337px" Font-Names="隶书" Font-Size="14pt"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 30%; height: 400px; background-color: aliceblue">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="仿宋_GB2312"
                    Font-Size="11pt">
                    <Nodes>
                        <asp:TreeNode Text="选课管理" Value="选程管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="选修课程/取消课程" Value="选修课程/取消课程" NavigateUrl="~/Student/selectcourse.aspx" Target="Iframe1"></asp:TreeNode>
                            <asp:TreeNode Text="列我的选课单" Value="列选课单" NavigateUrl="~/Student/listcourse.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="成绩管理" Value="成绩管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="列我的成绩单" Value="列我的成绩单" NavigateUrl="~/Student/listscore.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="密码管理" Value="密码管理" NavigateUrl="dispinfo.aspx?info=欢迎使用本系统" Target="Iframe1">
                            <asp:TreeNode Text="更改我的密码" Value="更改我的密码" NavigateUrl="~/Student/updatestudentpass.aspx" Target="Iframe1"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#009900"
                    NavigateUrl="~/Default.aspx" Target="_self">退出本系统</asp:HyperLink></td>
            <td style="width: 99%; height: 400px">
               <iframe name = "Iframe1" style="height:99%; width:99%" id = "Iframe1" src="dispinfo.aspx?info=欢迎使用本系统"></iframe>

            </td>
        </tr>
    </table>
</asp:Content>

