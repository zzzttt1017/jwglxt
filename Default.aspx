<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="欢迎使用学生成绩管理系统" StylesheetTheme="Blue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <h1 class="bigbt">用户登陆</h1>
            <div class="form-group">
                <label class="col-sm-5 control-label">账号：</label>
                   <div class="col-sm-3">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="账号"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="用户编号不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator>
                    </div> 
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">密码：</label>
                    <div class="col-sm-3">
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="密码不能为空" Font-Bold="True" Font-Size="10pt"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">用户类型：</label>
                <div class="col-sm-2">
                    <div class="checkbox-inline">
                    <label>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="学生" GroupName="sel" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="教师" GroupName="sel" />
                <asp:RadioButton ID="RadioButton3" runat="server" Text="管理员" GroupName="sel" />
                    </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 control-label">验证码:</label>
                    <div class="col-sm-1">
                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                <asp:Label ID="Label1" runat="server" Font-Size="25px" Width="60px"></asp:Label>
                    </div>
                    <div class="col-sm-1">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="看不清?" class="btn btn-primary" />
                    </div> 
            </div> 
                <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="登陆" OnClick="Button1_Click" />
                <input type ="reset" ID="Button2" class="btn btn-success" Text="重置"  />
</asp:Content>

