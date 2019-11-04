<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_5.aspx.cs" Inherits="SQLServerDemo._4_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DataReader读取数据</title>
    <style type="text/css">
        .style1
        {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     根据指定的列名读取指定用户的信息
     <hr />
     <table>
        <tr>
        <td class="style1" align="right"> 列名：</td>
            <td class="style1"><asp:DropDownList ID="ddlCols" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlCols_SelectedIndexChanged"
                    Width="90px">
         </asp:DropDownList>
            </td><td rowspan="2" style="width:20px"></td>
            <td rowspan="2" valign="top">
                <asp:Label ID="lblInfo" runat="server" Text="显示指定用户信息" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr><td align="right"> 数据项：</td>
            <td> 
                <asp:ListBox ID="ltbItems" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ltbItems_SelectedIndexChanged" Width="90px" 
                    Height="71px"></asp:ListBox>
            </td>
        </tr>
     </table>  
    </div>
    </form>
</body>
</html>
