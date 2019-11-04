<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_2.aspx.cs" Inherits="SQLServerDemo._4_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        创建数据库<hr/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="btnadd" runat="server" Text="创建Test表" OnClick="btnadd_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndel" runat="server" Text="删除Test表" OnClick="btndel_Click" />
    </div>
    </form>
</body>
</html>
