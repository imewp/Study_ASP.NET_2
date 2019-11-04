<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UserRegDemo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 185px;
        }
        .auto-style4 {
            height: 20px;
            width: 185px;
        }
        .auto-style5 {
            width: 93px;
        }
        .auto-style6 {
            height: 20px;
            width: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style5">[用户注册]</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">用户名：</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUname" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtUname" runat="server" ControlToValidate="txtUname" ErrorMessage="必须填写用户名">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">密码:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="172px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="必须填写密码">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">确认密码:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtRePwd" runat="server" TextMode="Password" Width="172px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtRePwd" runat="server" ControlToValidate="txtRePwd" Display="Dynamic" ErrorMessage="必须填写确认密码">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="comPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" Display="Dynamic" ErrorMessage="确认密码与密码不相同">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">姓名:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtName" runat="server" ControlToValidate="txtName" ErrorMessage="必须填写姓名">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">性别:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="radioSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="男"></asp:ListItem>
                        <asp:ListItem Value="女"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">年龄:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtAge" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="必须填写有效的年龄" MaximumValue="100" MinimumValue="1" Type="Integer">*(1~100)</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Email：</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="regtxtEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="必须填写有效的E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">例：John@123.com</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">QQ：</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtQQ" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="regtxtQQ" runat="server" ControlToValidate="txtQQ" ErrorMessage="必须填写有效的QQ号码" ValidationExpression="\d{5,12}">例：10000</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3" style="margin-left: 80px">
                    <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="注册" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" runat="server" value="重置" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:ValidationSummary ID="valError" runat="server" ShowSummary="False" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
