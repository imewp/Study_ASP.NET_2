<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCar.aspx.cs" Inherits="ShoppingCartDemo.ShoppingCar" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
        【购物车】&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="ItCurUser" runat="server"></asp:Literal>
            <hr/>
    </div>

    <div>
        <asp:GridView ID="grdGoods" runat="server" AutoGenerateColumns="False" BorderStyle="None" CssClass="tb_content" DataSourceID="sqlGoods" GridLines="None" PageSize="3" OnRowDataBound="grdGoods_RowDataBound" ShowFooter="True" AllowPaging="True" AllowSorting="True">
            <HeaderStyle CssClass="hstyle" />
            <AlternatingRowStyle  BackColor="#e2f2ff"/>
            <EmptyDataTemplate>
               <span style="font-size:12pt;">购物车内没有放置任何商品！</span>
            </EmptyDataTemplate>
            <FooterStyle CssClass="fstyle" />
            <Columns>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server"  Checked="true" AutoPostBack="true"/>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lblSelectAll" runat="server" OnClick="lbtnSelectAll_Click" Text="取消全选"></asp:LinkButton>
                    </FooterTemplate>
                    <ItemStyle CssClass="center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="宝贝">
                    <ItemTemplate>
                        <a href='<%# Eval("gdID","GoodsDetails.aspx?gdid={0}")%>'>
                            <asp:Image ID="img1" runat="server" ImageUrl='<%# Eval("gdImage","images/goods/l{0}")%>'/>
                        </a>
                        <ItemStyle CssClass="center" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <a href="GoodsList.aspx">继续挑选商品</a>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="名称">

                    <ItemTemplate>
                        <asp:HyperLink ID="hlkName" runat="server" 
                            NavigateUrl='<%# Eval("gdID","GoodsDetails.aspx?gdid={0}")%>' Text='<%# Eval("gdName")%>' />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbtnClear" runat="server" Text="清空购物车" OnClick="lbtnClear_Click"/>
                    </FooterTemplate>
                    <ItemStyle CssClass="name" />
                </asp:TemplateField>
                <asp:BoundField DataField="gdPrice" DataFormatString="{0:C}" HeaderText="单价(元)">
                    <ItemStyle CssClass="center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="数量">

                    <ItemTemplate>
                        <asp:TextBox ID="txtNum" runat="server" Width="20px" Text='<%#Bind("scNum") %>'></asp:TextBox>
                        <asp:ImageButton ID="ibtnUpdate" runat="server" CausesValidation="False" ImageUrl="~/images/icon/edit.png" ToolTip="单击更新数量" CommandName="Update" OnClientClick="return confirm('确定要修改该商品购买数量？')"  />
                    </ItemTemplate>
                    <ItemStyle CssClass="center" />

                    <FooterTemplate>
                        <asp:Literal ID="ltlTotal" runat="server" Text="商品总价："></asp:Literal>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="小计(元)">

                    <ItemTemplate>
                        <asp:Literal ID="ltlSum" runat="server" Text='<%#Eval("scSum","{0:f}") %>'></asp:Literal>
                    </ItemTemplate>

                    <ItemStyle CssClass="center" />
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <FooterTemplate>
                        <a href="Order.aspx"></a>
                        <asp:Image ID="imagComp" runat="server" ImageUrl="~/images/icon/comp.jpg" CssClass="noborder"/>
                    </FooterTemplate>
                    <ItemStyle CssClass="center" />
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnDel" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('确定要从购物车中删除该商品？');">删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="sqlGoods" runat="server"
             ConnectionString="<%$ ConnectionStrings:smdb %>" ProviderName="System.Data.SqlClient"
             DeleteCommand="upDelScarInfoBySciID" DeleteCommandType="StoredProcedure"
             SelectCommand="upGetInfoByScid" SelectCommandType="StoredProcedure"
             UpdateCommand="upUpdateNumBySciID" UpdateCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="scID" SessionField="scID" Type="Int32"/>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="scNum" Type="Int32" />
                <asp:Parameter Name="sciID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
