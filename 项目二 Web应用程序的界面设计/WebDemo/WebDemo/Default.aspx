<%@ Page Title="" Language="C#" MasterPageFile="~/Child.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDemo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="页面内容一" Font-Bold="true"></asp:Label>
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="server">
    <asp:Label ID="Label2" runat="server" Text="页面内容二"></asp:Label>
</asp:Content>
