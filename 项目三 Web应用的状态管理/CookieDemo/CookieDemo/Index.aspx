<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CookieDemo.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblCount" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="btndel" runat="server" Text="清除Cookies" OnClick="btndel_Click" />
    </div>
    </form>
</body>
</html>
