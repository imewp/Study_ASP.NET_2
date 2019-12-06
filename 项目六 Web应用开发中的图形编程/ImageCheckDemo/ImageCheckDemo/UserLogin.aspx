<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="ImageCheckDemo.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>会员登录</title>
    <style type="text/css">
        body
        {
	    font-size:11px;
	    font-family:宋体; 
        }
        .td_content
       {
            border-bottom-style: solid; 
            border-bottom-width: 1px; 
            border-bottom-color: black;
            height:25px;
   	    }
   	
   	    .textbox_content
   	    {
   		    width:150px;
   	    }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:300px;text-align:left" cellpadding="0" cellspacing="0" >
            <tr>
                <td colspan="2" style="" class="td_content">
                    <asp:Label ID="lblUser" runat="server" Font-Bold="True" Text="[用户登录]" 
                    style="color: #FF0066"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="td_content">用户名：</td>
                <td class="td_content">
                    <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td_content">密码：</td>
                <td class="td_content">
                    <asp:TextBox ID="txtUPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td_content" valign="middle">验证码：</td>
                <td class="td_content" valign="middle">
                    <asp:TextBox ID="txtCheckCode" runat="server" Width="75px"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/CheckCode.aspx"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="td_content" align="center">
                    <asp:Button ID="btnLogin" runat="server" Text="确认" OnClick="btnLogin_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="取消" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
