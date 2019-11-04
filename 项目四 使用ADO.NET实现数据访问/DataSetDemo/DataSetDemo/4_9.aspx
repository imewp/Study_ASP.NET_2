<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_9.aspx.cs" Inherits="DataSetDemo._4_9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        使用数据源控件实现商品信息显示<hr/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMDBConnectionString %>" SelectCommand="SELECT [gdID], [gdCode], [gdName], [gdPrice] FROM [Goods]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gdID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="gdID" HeaderText="gdID" InsertVisible="False" ReadOnly="True" SortExpression="gdID" />
                <asp:BoundField DataField="gdCode" HeaderText="gdCode" SortExpression="gdCode" />
                <asp:BoundField DataField="gdName" HeaderText="gdName" SortExpression="gdName" />
                <asp:BoundField DataField="gdPrice" HeaderText="gdPrice" SortExpression="gdPrice" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
