<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_2.aspx.cs" Inherits="WebProject1._2_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Web服务器控件</title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <asp:Label ID="Label1" runat="server" Text="ASP.NET程序设计"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="红色" CommandName="red" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CommandName="green" Text="绿色" OnClick="Button1_Click" />
            <asp:Button ID="Button3" runat="server" CommandName="blue" Text="蓝色" OnClick="Button1_Click"/>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="红色" CommandName="red" OnCommand="Button_Click"/>
            <asp:Button ID="Button5" runat="server" Text="绿色" CommandName="green" OnCommand="Button_Click"/>
            <asp:Button ID="Button6" runat="server" Text="蓝色" CommandName="blue" OnCommand="Button_Click"/>
            <br />
            <br />
            单选按钮控件和单选按钮列表控件(RadioButton和RadioButtonList)<br />
         
            单选按钮控件：<asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="sex" Checked="true"/>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="sex"/>
            <br />
            单选按钮列表控件：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>

            <br />
            复选框控件和复选框列表控件(CheckBox和CheckBoxList)
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>看书</asp:ListItem>
                <asp:ListItem>打球</asp:ListItem>
                <asp:ListItem>旅游</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="Button7" runat="server" Text="显示" OnClick="Button7_Click" Width="60px" />
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>

            <br />
            <br />
            7.超链接控件(HyperLink)<br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/2_1.aspx">湖南信息职院</asp:HyperLink>

        </div>
    </form>
</body>
</html>
