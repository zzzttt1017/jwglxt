<%@ Page Language="C#" AutoEventWireup="true" CodeFile="querymycourse.aspx.cs" Inherits="querymycourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="background-color: #99ccff;">
            <tr>
                <td style="width: 456px; height: 40px; text-align: center">
                    <strong><span style="font-size: 14pt; color: #ff00cc; font-family: 仿宋_GB2312">列我的任课课程</span></strong></td>
            </tr>
            <tr>
                <td style="width: 456px; height: 23px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                        Font-Bold="True" Font-Size="10pt" ForeColor="Black" GridLines="None" Height="5px"
                        OnPageIndexChanging="GridView1_PageIndexChanging" Width="450px">
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
                            <asp:BoundField DataField="tname" HeaderText="上课教师">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
