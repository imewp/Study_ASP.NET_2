<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_3.aspx.cs" Inherits="WebProject1._2_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>验证控件</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            (1)必须项验证<br />
            用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="(用户名不能为空)" Font-Size="Small"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click"/>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
