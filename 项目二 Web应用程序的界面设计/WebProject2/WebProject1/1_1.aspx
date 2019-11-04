<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_1.aspx.cs" Inherits="WebProject1._1_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="red">红色</asp:ListItem>
            <asp:ListItem Value="blue">蓝色</asp:ListItem>
            <asp:ListItem Value="green">绿色</asp:ListItem>
        </asp:DropDownList>
        <br />
        请选择您最喜欢的颜色:<asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        添加新的颜色：<asp:TextBox ID="TextBox1" runat="server" Width="114px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
        <br />
        <br />
        请选择您喜欢的水果：<asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="89px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" SelectionMode="Multiple" Width="67px">
            <asp:ListItem>西瓜</asp:ListItem>
            <asp:ListItem>苹果</asp:ListItem>
            <asp:ListItem>香蕉</asp:ListItem>
            <asp:ListItem>葡萄</asp:ListItem>
            <asp:ListItem>橙子</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://baidu.com" ImageHeight="100px" ImageUrl="~/1.jpg" ImageWidth="200px">百度</asp:HyperLink>
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
