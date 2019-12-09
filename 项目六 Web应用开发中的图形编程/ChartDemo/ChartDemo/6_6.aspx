<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6_6.aspx.cs" Inherits="ChartDemo._6_6" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Chart ID="Chart1" runat="server">
            <Series>
                <asp:Series Name="Series1" ChartType="Pie" ChartArea="ChartArea1" Legend="Legend1">
                    <Points>
                        <asp:DataPoint AxisLabel="看书" YValues="15" />
                        <asp:DataPoint AxisLabel="写代码" YValues="11" />
                        <asp:DataPoint AxisLabel="上网" YValues="18" />
                        <asp:DataPoint AxisLabel="运动" YValues="10" />
                    </Points>
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="True">
<Area3DStyle Enable3D="True"></Area3DStyle>
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Legend1">
                </asp:Legend>
            </Legends>
            <Titles>
                <asp:Title Name="Title1" Text="空闲时间你做什么？  调查结果">
                </asp:Title>
            </Titles>
        </asp:Chart>
    </div>
    </form>
</body>
</html>
