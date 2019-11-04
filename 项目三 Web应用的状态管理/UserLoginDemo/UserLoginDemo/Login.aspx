<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UserLoginDemo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 38%;
            height: 133px;
            margin-left:200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <table class="auto-style1" border="0">
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTitle" runat="server" Text="用户登录"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUName" runat="server" Text="用户名："></asp:Label>
        <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUPwd" runat="server" Text="密  码："></asp:Label>
                    &nbsp;<asp:TextBox ID="txtUPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" Text="确定" OnClick="btnLogin_Click" style="height: 21px" />
        &nbsp;<asp:Button ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
