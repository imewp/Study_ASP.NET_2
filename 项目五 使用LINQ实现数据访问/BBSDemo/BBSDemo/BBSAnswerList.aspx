<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBSAnswerList.aspx.cs" Inherits="BBSDemo.BBSAnswerList" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>留言回复</title>
</head>
<body>
    <form id="form1" runat="server">
        【留言板】<hr/>
    <div class="table">
        <asp:Repeater ID="repBBSNote" runat="server" DataSourceID="linqNote">
            <ItemTemplate>
                <p style="text-align:left; font-size:14px;"><asp:Label ID="Label1" runat="server" Text='<%#Eval("bnSubject") %>'></asp:Label></p>
                <table class="ba_table">
                    <tr>
                        <td>
                            <div class="ba_title">
                                <asp:Label ID="lbluName" style="font-weight:700"  runat="server" Text='<%#Eval("Users.uName") %>'> </asp:Label>
                                 &nbsp;于<asp:Label ID="Label2" runat="server" Text='<%#Eval("bnAddTime") %>'></asp:Label>
                                 &nbsp;发表
                            </div>
                        </td>
                    </tr>
                     <tr>
                        <td><div class="ba_content">
                            <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("bnContent") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater ID="repBBSAnswer" runat="server">
             <ItemTemplate>
                <table class="ba_table">
                    <tr>
                        <td>
                            <div class="ba_title">
                                <asp:Label ID="lbluName" style="font-weight:700"  runat="server" Text='<%#Eval("Users.uName") %>'> </asp:Label>
                                 &nbsp;于<asp:Label ID="timeLabel" runat="server" Text='<%#Eval("bnAddTime") %>'></asp:Label>
                                 &nbsp;进行回复
                            </div>
                        </td>
                    </tr>
                      <tr>
                        <td><div class="ba_content">
                            <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("bnContent") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
        <asp:LinqDataSource ID="linqAnswer" runat="server" ContextTypeName="BBSDemo.BBSDataContext" TableName="BBSAnswer" EntityTypeName="" Where="bnID == @bnID">
            <WhereParameters>
                <asp:QueryStringParameter Name="bnID" QueryStringField="bnID" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="linqNote" runat="server" ContextTypeName="BBSDemo.BBSDataContext" TableName="BBSNote" EntityTypeName="">
         </asp:LinqDataSource> 
         <div style="text-align:left; margin-top:10px;padding:10px;">
             <asp:Button ID="btnSave" runat="server" Text="回复主题" OnClick="btnSave_Click" /><br /><br />
             <asp:TextBox ID="txtbaContent" runat="server" Height="85px" TextMode="MultiLine" Width="480px"></asp:TextBox>       
        </div> 
    </div>
    </form>
</body>
</html>
