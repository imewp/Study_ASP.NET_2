<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_11.aspx.cs" Inherits="GridViewDemo._4_11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    使用GridView控件实现数据的分页和排序<hr>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=506_21;Initial Catalog=SMDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [gdID], [gdCode], [gdName], [gdPrice] FROM [Goods]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="gdID" DataSourceID="SqlDataSource1" PageSize="5">
            <Columns>
                <asp:BoundField DataField="gdID" HeaderText="gdID" InsertVisible="False" ReadOnly="True" SortExpression="gdID" />
                <asp:BoundField DataField="gdCode" HeaderText="gdCode" SortExpression="gdCode" />
                <asp:BoundField DataField="gdName" HeaderText="gdName" SortExpression="gdName" />
                <asp:BoundField DataField="gdPrice" HeaderText="gdPrice" SortExpression="gdPrice" DataFormatString="{0:C}"/>
            </Columns>
            <PagerSettings NextPageText="下一页" PreviousPageText="上一页" FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast" />
        </asp:GridView>
    </form>
</body>
</html>
