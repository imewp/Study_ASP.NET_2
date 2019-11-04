<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_1.aspx.cs" Inherits="SQLServerDemo._4_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="显示信息"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnSM" runat="server" Text="连接数据库" OnClick="btnSM_Click" />
    </div>
    </form>
</body>
</html>
