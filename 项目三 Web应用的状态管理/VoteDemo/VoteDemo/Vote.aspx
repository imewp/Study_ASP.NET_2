<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="VoteDemo.Vote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">注意：<asp:Label ID="lblState" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" Width="289px">
                        <asp:ListItem>张玉杰</asp:ListItem>
                        <asp:ListItem>李明达</asp:ListItem>
                        <asp:ListItem>王玉兰</asp:ListItem>
                        <asp:ListItem>赵志奇</asp:ListItem>
                        <asp:ListItem>马明伟</asp:ListItem>
                        <asp:ListItem>程超</asp:ListItem>
                        <asp:ListItem>刘乎真</asp:ListItem>
                        <asp:ListItem>张群英</asp:ListItem>
                        <asp:ListItem>王子文</asp:ListItem>
                        <asp:ListItem>杨波</asp:ListItem>
                    </asp:RadioButtonList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnVote" runat="server" Text="投票" OnClick="btnVote_Click" />
                    <asp:Button ID="btnView" runat="server" Text="查看" OnClick="btnView_Click" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblView" runat="server" Text=""></asp:Label>
                </td>
            </tr>
           
        </table>

    </div>
    </form>
</body>
</html>
