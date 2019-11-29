<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCartDemo.Login" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 300px;
            font-size:small;
            margin:auto;
        }
        .style3
        {
            width: 120px;
             font-size:small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        【会员登录】<hr/>
         <table class="style1">
            <tr>
                <td align="right" class="style3">
                    用户名：</td>
                <td style="width:180px">
                    <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    密&nbsp;&nbsp;&nbsp; 码：</td>
                <td style="width:180px">
                    <asp:TextBox ID="txtUPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
             <tr align="center">
                 <td colspan="2">
                    <asp:CheckBox ID="chkState" runat="server" Text="两周内不用登录" />
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" />
                    <asp:LinkButton ID="lbtnReg" runat="server" style="TEXT-DECORATION: none">注册</asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
