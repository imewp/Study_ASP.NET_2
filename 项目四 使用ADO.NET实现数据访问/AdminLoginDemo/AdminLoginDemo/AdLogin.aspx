<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdLogin.aspx.cs" Inherits="AdminLoginDemo.AdLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="middle" style="background-color:Yellow;">
            <table style="margin:0 auto;background-color:#F2F8FB; vertical-align:middle;width:40%;"><caption><strong>后台登录</strong></caption>
            <tr><td style="text-align:right;color:#000000;">用户名：</td><td>
                <asp:TextBox ID="txtName" runat="server" Width="140px"></asp:TextBox></td><td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="用户名不能为空" Text="*" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
            <tr><td style="text-align:right;color:#000000;">密码：</td><td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="140px"></asp:TextBox></td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="密码不能为空" Text="*" ControlToValidate="txtPwd" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
            <tr><td style="text-align:right;color:#000000;">管理员类型：</td><td>
                <asp:DropDownList ID="ddlType" runat="server">
                    <asp:ListItem Value="0">一般管理员</asp:ListItem>
                    <asp:ListItem Value="1">系统管理员 </asp:ListItem>
                </asp:DropDownList>
                </td><td>
                    &nbsp;</td></tr>
            <tr><td colspan="3" style="text-align:center;">
                <asp:Button ID="btnConfirm" runat="server" Text="登录" 
                    onclick="btnConfirm_Click" />&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="取消" onclick="btnCancel_Click" CausesValidation="false" /></td></tr>
            </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />    
            </div>    
    </form>
</body>
</html>
