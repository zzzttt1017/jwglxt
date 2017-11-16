<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectcourse.aspx.cs" Inherits="selectcourse" StylesheetTheme="Blue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server" >
    <div>
        <table align="center" style="background-color: #99ccff">
            <tr>
                <td style="width: 498px; height: 42px; text-align: center">
                    <strong><span style="font-size: 14pt; color: #ff3300; font-family: 仿宋_GB2312">学生选修或取消课程</span></strong></td>
            </tr>
            <tr>
                <td style="width: 498px; height: 139px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Bold="True" Font-Size="10pt"
                        ForeColor="Black" GridLines="None" Width="517px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"  OnPageIndexChanging="GridView1_PageIndexChanging"  >
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:BoundField DataField="cno" HeaderText="课程号">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cname" HeaderText="课程名">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ctime" HeaderText="上课学期">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cplace" HeaderText="上课地点">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tname" HeaderText="任课教师">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sel" HeaderText="选修否" >
                                <ItemStyle ForeColor="#0000C0" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField DeleteText="取消" EditText="选修" ShowDeleteButton="True" ShowEditButton="True">
                                <ItemStyle ForeColor="Red" />
                            </asp:CommandField>
                        </Columns>
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 498px; height: 33px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" 
            Text="提交选修课程"  OnClick="Button1_Click" /></td>
            </tr>
        </table>
    
    </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    </form>
</body>
</html>
