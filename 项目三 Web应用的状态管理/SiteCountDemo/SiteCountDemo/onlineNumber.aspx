<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onlineNumber.aspx.cs" Inherits="SiteCountDemo.onlineNumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网站计数器</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Literal ID="Literal1" runat="server" Text="当前访问人数：0"></asp:Literal>
        <br />
        <asp:Literal ID="Literal2" runat="server" Text="  总访问人数：0"></asp:Literal>
    </div>
    </form>
</body>
</html>
