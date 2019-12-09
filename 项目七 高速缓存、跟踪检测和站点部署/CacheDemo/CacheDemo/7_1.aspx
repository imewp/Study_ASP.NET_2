<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7_1.aspx.cs" Inherits="CacheDemo._7_1" %>

<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        页面中的时间：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br/>
        <uc1:WebUserControl runat="server" id="WebUserControl" />
    </div>
    </form>
</body>
</html>
