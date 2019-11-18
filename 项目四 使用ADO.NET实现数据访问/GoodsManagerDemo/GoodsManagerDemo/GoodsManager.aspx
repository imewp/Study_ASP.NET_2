<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoodsManager.aspx.cs" Inherits="GoodsManagerDemo.GoodsManager" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    【商品管理】<hr/>
        <asp:Button ID="btnAdd" runat="server" Text="添加商品" OnClick="btnAdd_Click" />
        <br />
        <br />
    </div>
        <asp:GridView ID="grdGoods" runat="server" AutoGenerateColumns="False" DataKeyNames="gdID" AllowPaging="True" BorderWidth="1px" DataSourceID="sqlGoods" PageSize="5">
            <Columns>   
                <asp:BoundField DataField="gdCode" HeaderText="编号" ItemStyle-CssClass="center"><ItemStyle CssClass="center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="tName" HeaderText="类别" ItemStyle-CssClass="center" ><ItemStyle CssClass="center"></ItemStyle>
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFormatString="GoodsDetails.aspx?gdid={0}" DataTextField="gdName" DataNavigateUrlFields="gdID" HeaderText="名称">
                <ItemStyle CssClass="name" />
                </asp:HyperLinkField>
                <asp:BoundField DataFormatString="{0:C}" HeaderText="价格" DataField="gdPrice" ItemStyle-CssClass="center"><ItemStyle CssClass="center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="gdQuantity" ItemStyle-CssClass="center" HeaderText="库存量"><ItemStyle CssClass="center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="gdAddTime" ItemStyle-CssClass="center" HeaderText="上架时间" DataFormatString="{0:d}"><ItemStyle CssClass="center"></ItemStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="编辑"><ItemStyle CssClass="center" />
                    <ItemTemplate>
                        <a href='EditGoods.aspx?gdid=<%#Eval("gdID")%>'>
                            <asp:Image ID="Image1" runat="server" CssClass="noborder" ToolTip="编辑商品" ImageUrl="images/icon/mod.gif"/>
                            &nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="删除商品" ImageUrl="~/images/icon/delete.gif" CommandName="detele" OnClientClick="return confirm('确定要删除该商品？');" />
                    </ItemTemplate>
                </asp:TemplateField>

             
            </Columns>
            <HeaderStyle CssClass="hstyle" />
            <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlGoods" runat="server"
             ConnectionString="Data Source=506_21;Initial Catalog=SMDB;Integrated Security=True"
             ProviderName="System.Data.SqlClient"
             SelectCommand="select Goods.*, tName from Goods join GoodsType on Goods.tID=GoodsType.tID order by gdAddTime"
             DeleteCommand="delete from Goods where tID=@gdID">
            <UpdateParameters>
                <asp:Parameter Name="gdID" Type="Int32"/>
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
