<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zlnk_WebRole._Default" MasterPageFile="~/main.master" %>
<asp:Content ID="nav" runat="server" ContentPlaceHolderID="navPH">
    <ul>
<li><a href="default.aspx" class="current">home</a></li>
<li><a href="Register.aspx">register</a></li>
<li><a href="Login.aspx">login</a></li>
<li><a href="About.aspx">help</a></li>
</ul>
</asp:Content>

<asp:Content ID="main" ContentPlaceHolderID="phMain" runat="server">
    <p align="right">
<asp:TextBox ID="txtURL" runat="server" Width="380px" Text="http://"></asp:TextBox><br />
User Name [if you want to track it]: <asp:TextBox ID="txtUserName" runat="server" Width="100"></asp:TextBox>
    <br />
        <asp:Button ID="btnShort" runat="server" Text="Shorten" Width="150px" ValidationGroup="shortVG"
            onclick="btnShort_Click" style="margin-left: 0px" /></p>
        <asp:HyperLink ID="hlkShort" runat="server"></asp:HyperLink>
    
    <br />
    <center>
                <asp:Label ID="lblMesssage" runat="server" Font-Bold="True" ForeColor="#990000"></asp:Label>
    </center>
</asp:Content>
