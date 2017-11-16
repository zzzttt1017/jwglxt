<%@ Page Language="C#" AutoEventWireup="true" CodeFile="plancourse1.aspx.cs" Inherits="plancourse1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="link.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 400px; height: 45px; ">
            <tr>
                <td style="height: 40px; text-align: center; width: 396px;">
                    <span style="font-size: 14pt; color: #ff0099; font-family: 仿宋_GB2312"><strong>选择上课教师<asp:Label
                        ID="Label1" runat="server"></asp:Label></strong></span></td>
            </tr>
            <tr>
                <td style="width: 396px; height: 77px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                        Font-Bold="True" Font-Size="10pt" ForeColor="Black" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                         OnRowEditing="GridView1_RowEditing" Width="394px">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:BoundField DataField="tno" HeaderText="编号">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tname" HeaderText="姓名">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tsex" HeaderText="性别">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tdepart" HeaderText="系别">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField EditText="选择" ShowEditButton="True">
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
        </table>
    
    </div>
    </form>
</body>
</html>
