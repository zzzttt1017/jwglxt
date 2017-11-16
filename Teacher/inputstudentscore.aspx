<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inputstudentscore.aspx.cs" Inherits="inputstudentscore" StylesheetTheme="Blue" %>

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
                <td style="width: 456px; height: 22px; text-align: center">
                    <strong><span style="font-size: 14pt; color: #ff00cc; font-family: 仿宋_GB2312">输入我的学生成绩</span></strong></td>
            </tr>
            <tr>
                <td style="width: 456px; height: 40px; text-align: center">
                    <span style="font-size: 10pt; color: #0000ff"><strong>课程: </strong></span>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Size="10pt"
                        Width="113px">
                    </asp:DropDownList>&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Size="10pt" OnClick="Button1_Click"
                        Text="确定" /></td>
            </tr>
            <tr>
                <td style="width: 456px; height: 23px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="0"
                        Font-Bold="True" Font-Size="10pt" ForeColor="Black" GridLines="None" Height="5px" Width="456px" >
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="学号">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sname" HeaderText="姓名">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cno" HeaderText="课程号">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cname" HeaderText="课程名">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="分数">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("degree") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"degree") %>'
                                        Width="65px"></asp:TextBox>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button
                        ID="Button2" runat="server" Text="保存成绩" OnClick="Button2_Click" />&nbsp;
                    <input type="reset" ID="Button3" runat="server" Text="取消" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
