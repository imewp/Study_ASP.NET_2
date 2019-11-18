<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_12.aspx.cs" Inherits="CunChuGCDemo._4_12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        使用存储过程，添加商品类别<hr/>
        类别名称：<asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:Button ID="btnAddType" runat="server" Text="添加" OnClick="btnAddType_Click1" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
