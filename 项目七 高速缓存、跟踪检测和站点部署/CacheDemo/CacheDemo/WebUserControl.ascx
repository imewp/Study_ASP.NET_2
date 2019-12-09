<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl.ascx.cs" Inherits="CacheDemo.WebUserControl" %>
<%@ OutputCache Duration="10" VaryByParam="none" %>
被缓冲的用户控件：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>