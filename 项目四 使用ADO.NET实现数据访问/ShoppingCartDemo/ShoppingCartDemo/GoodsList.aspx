<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoodsList.aspx.cs" Inherits="ShoppingCartDemo.GoodsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="content">
            【商品展示】&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="ItCurUser" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;<a href="ShoppingCar.aspx">购物车</a><hr/>
        </div>
        <div>
            <asp:DataList ID="dlstGoods" runat="server" RepeatColumns="3" DataKeyField="gdID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="tb">
                        <tr>
                            <td colspan="2">
                                <a href="GoodsDetail.aspx?gdID=<%# Eval("gdID")%>"></a>
                                <asp:Image ID="Image1" runat="server" ToolTip='<%# Eval("gdName")%>'
                                    CssClass="img" ImageUrl='<%# Eval("gdImage","images/goods/{0}")%>'/> 
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="tdrow">
                               <a href="GoodsDetail.aspx?gdID=<%# Eval("gdID")%>"></a>
                                <asp:Label ID="lbl1" runat="server" Text='<%# Eval("gdName")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdl">价格：
                                <asp:Literal ID="lbl2" runat="server" Text='<%# Eval("gdPrice","{0:C}")%>'></asp:Literal>
                                <td class="tdr">运费：
                                    <asp:Literal ID="lt1" runat="server" Text='<%# Eval("gdFeight","{0:C}")%>'></asp:Literal>
                                </td>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdl">已售：
                                <asp:Literal ID="lt2" runat="server" Text='<%# Eval("gdSaleQty","{0}件")%>'></asp:Literal>
                            </td>
                            <td class="tdr">评价数：
                                <asp:Literal ID="lt3" runat="server" Text='<%# Eval("gdEvNum")%>'></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                           <td colspan="2">
                               <asp:ImageButton ID="AddShop" runat="server" CommandName="addShop" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:Label ID="lblCurPage" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblTotalPage" runat="server" Text="Label"></asp:Label>
            <asp:LinkButton ID="lbtnPre" runat="server" CommandName="Pre" OnCommand="LinkBtnClick">上一页</asp:LinkButton>
            <asp:LinkButton ID="lbtnNext" runat="server" CommandName="Next" OnCommand="LinkBtnClick">下一页</asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:smdb %>" SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
