<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listcourse.aspx.cs" Inherits="listcourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 499px; height: 133px; background-color: #99ccff;">
            <tr>
                <td style="height: 40px; text-align: center"> 
                    <span style="font-size: 14pt; color: #ff0099; font-family: 仿宋_GB2312"><strong>列我的选课单</strong></span></td>
            </tr>
            <tr>
                <td style="width: 499px; height: 11px;">
                    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
                        BorderWidth="1px" CellPadding="2" Font-Bold="True" Font-Size="10pt" ForeColor="Black"
                        GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" Width="492px" AllowPaging="True" AutoGenerateColumns="False" Height="1px">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="学号" >
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sname" HeaderText="姓名" >
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cno" HeaderText="课程号" >
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cname" HeaderText="课程名" >
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tno" HeaderText="上课教师号" >
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
