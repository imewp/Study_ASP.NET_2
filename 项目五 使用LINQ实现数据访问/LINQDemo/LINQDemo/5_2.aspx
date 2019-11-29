<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_2.aspx.cs" Inherits="LINQDemo._5_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        使用LINQ To SQL 查询GoodsType表中的数据<hr/>
    <div>
        <asp:GridView ID="gvGoodsType" runat="server" AutoGenerateColumns="False" DataKeyNames="tID">
            <Columns>
                <asp:BoundField DataField="tID" HeaderText="类别编号" />
                <asp:BoundField DataField="tName" HeaderText="类别名称" />
            </Columns>
        </asp:GridView>
        <br />
        使用LINQ To SQL 向GoodsType表中插入数据<hr />
        插入新的类别名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="插入数据" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="插入多条数据" />
        <br />
        使用LINQ To SQL 向GoodsType表中更新数据<hr/>
        修改前的类别名称：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        修改后的类别名称：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="更新数据" />
        <br />
        <br />
        使用LINQ To SQL 向GoodsType表中删除数据<hr />
        要删除的类别名称：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:Button ID="btnDelete" runat="server" Text="删除数据" OnClick="btnDelete_Click" />
    </div>
            

    </form>
 
        
</body>
</html>
