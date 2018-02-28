<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="zlnk_WebRole.register" MasterPageFile="~/main.master" %>
<asp:Content ID="nav" runat="server" ContentPlaceHolderID="navPH">
    <ul>
<li><a href="default.aspx">home</a></li>
<li><a href="Register.aspx" class="current">register</a></li>
<li><a href="Login.aspx">login</a></li>
<li><a href="About.aspx">help</a></li>
</ul>
</asp:Content>
<asp:Content ID="cnt" ContentPlaceHolderID="phMain" runat="server">
    <br /><br />

<center>
                <asp:Label ID="lblMesssage" runat="server" Font-Bold="True" 
            ForeColor="#990000"></asp:Label>
    </center>
<center>
<table>
        <tr>
            <td>
                <b>User Name</b></td>
            <td>
                <asp:TextBox ID="txtUN" runat="server" Width="140px" ValidationGroup="RegisterVG"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUN" 
                    ErrorMessage="*" ValidationGroup="RegisterVG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Password</b></td>
            <td>
                <asp:TextBox ID="txtPwd" TextMode="Password" runat="server"  Width="140px" ValidationGroup="RegisterVG"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" 
                    ErrorMessage="*" ValidationGroup="RegisterVG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Original Domain Name</b></td>
            <td>
                <asp:TextBox ID="txtODN" runat="server"  Width="140px" ValidationGroup="RegisterVG"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtODN"
                    ErrorMessage="*" ValidationGroup="RegisterVG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Short Domain Name</b></td>
            <td>
                <asp:TextBox ID="txtSDN" Text="http://zlnk.net" runat="server"  Width="140px" ValidationGroup="RegisterVG"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSDN"
                    ErrorMessage="*" ValidationGroup="RegisterVG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Email</b></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"  Width="140px" ValidationGroup="RegisterVG"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="*" ValidationGroup="RegisterVG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Register" ValidationGroup="RegisterVG" Width="120px" />
            </td>
        </tr>
    </table>
</center>
</asp:Content>