<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6_5.aspx.cs" Inherits="GDI_Demo._6_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        <span style="color:blue;font-size:20px">动态页作为图像源</span>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/6_2.aspx"/>
    </div>
    </form>
</body>
</html>
