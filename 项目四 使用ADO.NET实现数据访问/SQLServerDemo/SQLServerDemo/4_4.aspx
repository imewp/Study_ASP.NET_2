<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_4.aspx.cs" Inherits="SQLServerDemo._4_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加管理员</title>
    <style type="text/css">
        body {margin:0 auto;}
        .middle{height:180px;left:40%;margin-left:-100px;margin-top:-50px;position:absolute;top:40%;width:60%; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="middle" style="background-color:#EFFDFE;">
        <table style="margin:0 auto;background-color:#D5E9F9; vertical-align:middle;width:50%;"><caption><strong>
        添加管理员</strong></caption>
    <tr><td style="text-align:right; ">用户名：</td><td>
        <asp:TextBox ID="txtName" runat="server" Width="140px"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空" Text="*" ControlToValidate="txtName"></asp:RequiredFieldValidator></td></tr>
    <tr><td style="text-align:right; ">密码：</td><td><asp:TextBox ID="txtPwd" 
            runat="server" TextMode="Password" Width="140px"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" Text="*" ControlToValidate="txtPwd"></asp:RequiredFieldValidator></td></tr>
     <tr>
     <td style="text-align:right; ">
          确认密码：
     </td>
     <td>
         <asp:TextBox ID="txtPwd2" runat="server"  Width="139px"
             TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="密码不能为空" Text="*" ControlToValidate="txtPwd2"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不一致" Text="*" ControlToCompare="txtPwd" ControlToValidate="txtPwd2"></asp:CompareValidator>
     </tr>
      <tr>
     <td style="text-align:right;">
        类别：
     </td>
     <td>
         <asp:DropDownList ID="ddlType" runat="server" Width="129px">
            <asp:ListItem Value="0">一般管理员</asp:ListItem>
            <asp:ListItem Value="1">系统管理员</asp:ListItem>
        </asp:DropDownList>
         &nbsp;&nbsp;&nbsp;&nbsp;</td>
     </tr>
    <tr><td colspan="3" style="text-align:center;">
        <asp:Button ID="btnAdd" runat="server" Text="添加" onclick="btnAdd_Click" 
            />&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="取消"
            CausesValidation="false" /></td></tr>
    </table>

    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
    </div>
    </form>
</body>
</html>
