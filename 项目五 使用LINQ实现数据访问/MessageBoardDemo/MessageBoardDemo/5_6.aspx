<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_6.aspx.cs" Inherits="MessageBoardDemo._5_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        使用LinqDataSource控件实现商品类别信息的显示<hr/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tID" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="tID" HeaderText="tID" InsertVisible="False" ReadOnly="True" SortExpression="tID" />
                <asp:BoundField DataField="tName" HeaderText="tName" SortExpression="tName" />
                <asp:BoundField DataField="tImg" HeaderText="tImg" SortExpression="tImg" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MessageBoardDemo.GoodsTypeDataContext" EntityTypeName="" TableName="GoodsType"></asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
