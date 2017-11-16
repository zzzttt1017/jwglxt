<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editmanager.aspx.cs" Inherits="editmanager" StylesheetTheme="Blue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 300px; height: 200px; background-color:  #99ccff">
            <tr>
                <td style="height: 40px; text-align: center">
                    <span style="font-size: 14pt; color: #ff0099; font-family: 仿宋_GB2312"><strong>编辑管理员记录</strong></span></td>
            </tr>
            <tr>
                <td style="width: 274px; height: 29%">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                        Font-Bold="True" Font-Size="10pt" ForeColor="Black" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" Width="381px" HorizontalAlign="Center" Height="97px">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:BoundField DataField="mno" HeaderText="编号">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="mname" HeaderText="姓名">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField ShowEditButton="True" HeaderText="操作1" >
                                <ItemStyle ForeColor="Blue" HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:CommandField ShowDeleteButton="True" HeaderText="操作2" >
                                <ItemStyle ForeColor="Red" HorizontalAlign="Center" />
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
                <td style="width: 274px; height: 25px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="退出编辑" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
