<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_7.aspx.cs" Inherits="MessageBoardDemo._5_7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
            font-size:12px;
        }
        td{
            padding:5px;
            }
        .title td{
            background:#f0f0f0;
        }
        .table{
            border:1px solid #ccc;
            margin:5px 5px 5px 5px;
            width:500px;
        }
        .table th{
            background-color:darkblue;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        使用Repeater控件和LinqDataSourse控件显示留言主题信息<hr/>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="LinqDataSource1">
            <HeaderTemplate>
                <table class="table">
                    <tr>
                        <th style="width:45%">标题</th>
                        <th style="width:15%">发表人</th>
                        <th>发表时间</th>
                        <th></th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>'></asp:Label>
                        </td>
                        <td>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Users.uName") %>'></asp:Label>
                        </td>
                        <td>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("bnAddTime") %>'></asp:Label>
                        </td>
                        <td>
                            <a>
                                 <a href="BBSAnswerList.aspx?id=<%#Eval("bnID") %>">查看</a>
                            </a>    
                        </td>
                    </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                    <tr class="title">
                        <td style="text-align:left">
                            <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>'></asp:Label>
                        </td>
                        <td>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Users.uName") %>'></asp:Label>
                        </td>
                        <td>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("bnAddTime") %>'></asp:Label>
                        </td>
                        <td>
                            <a>
                                 <a href="BBSAnswerList.aspx?id=<%#Eval("bnID") %>">查看</a>
                            </a>    
                        </td>
                    </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                <table />
            </FooterTemplate>
        </asp:Repeater>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server"
             ContextTypeName="MessageBoardDemo.BBSDataContext"
             TableName="BBSNote" EntityTypeName=""></asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
