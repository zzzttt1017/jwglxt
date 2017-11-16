<%@ Page Language="C#" AutoEventWireup="true" CodeFile="plancourse.aspx.cs" Inherits="plancourse" StylesheetTheme="Blue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="link.css" rel="stylesheet" type="text/css" />
    <link href="link.css" rel="stylesheet" type="text/css" />
    <link href="link.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 400px; height: 45px; ">
            <tr>
                <td style="width: 594px; height: 40px; text-align: center">
                    <span style="font-size: 14pt; color: #ff0099; font-family: 仿宋_GB2312"><strong>安排上课教师</strong></span></td>
            </tr>
            <tr>
                <td style="width: 594px; height: 155px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                        Font-Bold="True" Font-Size="10pt" ForeColor="Black" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowEditing="GridView1_RowEditing" Width="493px">
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
                            <asp:BoundField DataField="tno" HeaderText="上课教师编号">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tname" HeaderText="上课教师">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField HeaderText="操作" ShowEditButton="True" EditText="安排/更改教师">
                                <ItemStyle ForeColor="Blue" HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 594px; height: 25px">
                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="退出课程安排" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
