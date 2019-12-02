<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBSNoteList.aspx.cs" Inherits="BBSDemo.BBSNoteList" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>留言板</title>
</head>
<body>
    <form id="form1" runat="server">
       <div style="text-align:left">【留言板】</div> <hr/>
    <div>
        <asp:Repeater ID="repBBSNote" runat="server" DataSourceID="linqBBS">
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
                            <a href="BBSAnswerList.aspx?id=<%#Eval("bnID") %>">查看</a>   
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
                             <a href="BBSAnswerList.aspx?id=<%#Eval("bnID") %>">查看</a> 
                        </td>
                    </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                <table />
            </FooterTemplate>
        </asp:Repeater>
        <asp:LinqDataSource ID="linqBBS" runat="server" ContextTypeName="BBSDemo.BBSDataContext" EntityTypeName="" TableName="BBSNote"></asp:LinqDataSource>
        <div style="text-align:left">
            主题：<asp:TextBox ID="txtbnSubject" runat="server"></asp:TextBox>             
            <br />
            内容: 
            <asp:TextBox ID="txtbnContent" runat="server" Height="70px" TextMode="MultiLine" Width="411px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="留言" />
            <br />
        </div>        
    </div>
    </form>
</body>
</html>
