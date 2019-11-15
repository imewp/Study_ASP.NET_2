﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindGoods.aspx.cs" Inherits="FindGoodsDemo.FindGoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            margin:0 auto;
            font-size:0.8em;
        }
        .content {
            width:700px;
            margin-left:50px;
            margin-top:20px;
        }
        .center {
            text-align:center;
            vertical-align:top;
            line-height:20px;
            padding:8px;
        }
        .name {
            width:300px;
            vertical-align:top;
            line-height:20px;
            font-size:1.2em;
            padding:8px;
        }
        .color {
            color:#ff4400;
            font-size:1.4em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
        <div>【搜索条件】<hr /></div>
         <div>
            <table class="tb_content">
                <tr>
                    <td>
                        关键字：</td><td><asp:TextBox ID="txtGName" runat="server" EnableTheming="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>类别：</td>
                    <td><asp:DropDownList ID="ddlGType" runat="server"  DataSourceID="sqlGType"
                            DataTextField="tName" DataValueField="tID" OnDataBound="ddlGType_DataBound" 
                            >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td> 价格区间：</td><td>
                    <asp:TextBox ID="txtPriceLow" runat="server" Width="47px"></asp:TextBox>
                    &nbsp;-
                    <asp:TextBox ID="txtPriceHigh" runat="server" Width="48px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>销售量：</td>
                    <td>
                        <asp:RadioButtonList ID="rdltSaleQty" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="显示全部" Value="0"  Selected="True"></asp:ListItem>
                            <asp:ListItem Text="20以下" Value="19" ></asp:ListItem>
                            <asp:ListItem Text="20-49" Value="49"   ></asp:ListItem>
                            <asp:ListItem Text="50以上" Value="50"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td align="center"></td>
                    <td><asp:Button ID="btnFind" runat="server" Text="搜索 " OnClick="btnFind_Click" />
                    &nbsp;<asp:LinkButton ID="lbtnClear" runat="server" OnClick="lbtnClear_Click">清空查询条件</asp:LinkButton></td>
                </tr>
            </table>
        </div><br />
         <div>
             【搜索结果】<hr />
              <asp:SqlDataSource ID="sqlGType" runat="server" 
                  ConnectionString="Data Source=506_21;Initial Catalog=SMDB;Integrated Security=True" 
                  ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [GoodsType]">
              </asp:SqlDataSource>
              <asp:SqlDataSource ID="sqlGoods" runat="server" 
                  ConnectionString="Data Source=506_21;Initial Catalog=SMDB;Integrated Security=True" 
                  SelectCommand="select Goods.*,GoodsType.tName from Goods inner join GoodsType on Goods.tID=GoodsType.tID">
              </asp:SqlDataSource>
              <asp:GridView ID="grdGoods" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="gdID" BorderWidth="0px" ShowHeader="False" AllowPaging="True"  DataSourceID="sqlGoods"
                PageSize="3" >
                <Columns>
                    <asp:ImageField DataImageUrlField="gdImage" ItemStyle-CssClass="center"
                        DataImageUrlFormatString="images/goods/l{0}">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="gdID"  ItemStyle-CssClass="name"
                        DataNavigateUrlFormatString="GoodsDetails.aspx?gdid={0}" 
                        DataTextField="gdName" >
                    </asp:HyperLinkField>
                    <asp:TemplateField ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:Label ID="lbPrice" runat="server" Text='<%#Eval("gdPrice","{0:C}") %>' CssClass="color"></asp:Label> 
                            <br /> <br /> 
                            <asp:Label ID="lbCity" runat="server" Text='<%#Eval("gdCity") %>'></asp:Label> 
                            <br />
                            <img id="img" src="images/icon/mail.jpg" alt="" /> <asp:Label ID="lbFreight" runat="server" Text='<%#Eval("gdFeight","{0:C}") %>'></asp:Label> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-CssClass="center">
                        <ItemTemplate>
                            销量：<asp:Label ID="lbSaleQty" runat="server" Text='<%#Eval("gdSaleQty") %>'></asp:Label> 
                        </ItemTemplate>
                    </asp:TemplateField >
                    <asp:BoundField DataField="tName" ItemStyle-CssClass="center" >
                    </asp:BoundField>
                </Columns>
                <PagerSettings FirstPageText="首页" LastPageText="末页" 
                    Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
            </asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
