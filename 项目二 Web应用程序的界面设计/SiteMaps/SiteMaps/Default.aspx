<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SiteMaps.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <%-- SiteMapPath控件 --%>
        <%--<asp:SiteMapPath ID="SiteMapPath1" runat="server" PathSeparator="》"></asp:SiteMapPath>--%>

        <%--Menu控件--%>
        <%--<asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" StaticDisplayLevels="2"></asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />--%>

        <%-- TreeView控件 --%>
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"></asp:TreeView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="遍历" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="新增" />
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </div>
    </form>
</body>
</html>
