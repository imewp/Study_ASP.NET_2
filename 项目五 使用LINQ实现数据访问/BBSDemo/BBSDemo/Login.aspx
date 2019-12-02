<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BBSDemo.Login" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:left">会员登录</div><hr />
        <div>
        
            <table class="auto-style1">
                <tr>
                    <td style="text-align:right">用户名：</td>
                    <td>
                        <asp:TextBox ID="txtuName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">密&nbsp; 码：</td>
                    <td>
                        <asp:TextBox ID="txtuPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="重置" />
                    </td>
                </tr>
            </table>
        
        </div>
    </form>
</body>
</html>
