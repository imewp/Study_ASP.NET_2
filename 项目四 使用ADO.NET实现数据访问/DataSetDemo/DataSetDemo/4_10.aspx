<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_10.aspx.cs" Inherits="DataSetDemo._4_10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        使用数据源控件实现商品模糊查询<hr/>
        <asp:TextBox ID="txtFind" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="查询" /><br/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
             ConnectionString="<%$ ConnectionStrings:smdb %>" ProviderName="System.Data.SqlClient"
             SelectCommand="SELECT [gdCode], [gdName], [gdPrice], [gdID] FROM [Goods] WHERE ([gdName] LIKE '%' + @gdName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtFind" Name="gdName" PropertyName="Text" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gdID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="gdCode" HeaderText="gdCode" SortExpression="gdCode" />
                <asp:BoundField DataField="gdName" HeaderText="gdName" SortExpression="gdName" />
                <asp:BoundField DataField="gdPrice" HeaderText="gdPrice" SortExpression="gdPrice" />
                <asp:BoundField DataField="gdID" HeaderText="gdID" InsertVisible="False" ReadOnly="True" SortExpression="gdID" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
