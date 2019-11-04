<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_7.aspx.cs" Inherits="FileRWDemo._3_7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    读写文件操作<hr/>
        <asp:Button ID="btnRead" runat="server" Text="读文件" OnClick="btnRead_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnWrite" runat="server" Text="写文件" OnClick="btnWrite_Click" />
        <br />
        <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
