<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="zlnk_WebRole.login" MasterPageFile="~/main.master" %>
<asp:Content ID="nav" runat="server" ContentPlaceHolderID="navPH">
    <ul>
<li><a href="default.aspx">home</a></li>
<li><a href="Register.aspx">register</a></li>
<li><a href="Login.aspx" class="current">login</a></li>
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
Login 
    <table>
        <tr>
            <td>
                <b>User Name</b></td>
            <td>
                <asp:TextBox ID="txtUN0" runat="server"  Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUN0" 
                    ErrorMessage="*" ValidationGroup="LoginVG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Password</b></td>
            <td>
                <asp:TextBox ID="txtPwd0" TextMode="Password" runat="server"  
                    ValidationGroup="LoginVG"  Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPwd0" 
                    ErrorMessage="*" ValidationGroup="LoginVG"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
<br />

                <asp:Button ID="btnLogin" runat="server" Text="Login" 
        ValidationGroup="LoginVG" Width="120px" onclick="btnLogin_Click" />

</center>
<br /><br /><br /><br />


<asp:DataGrid ID="zlinksGrid" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AutoGenerateColumns="False" Width="100%" >
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <AlternatingItemStyle BackColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                            <asp:HyperLinkColumn DataNavigateUrlField="sCd" 
                                DataNavigateUrlFormatString="http://zlnk.net/{0}" DataTextField="sCd" 
                                DataTextFormatString="{0}" HeaderText="Short URL">
                            </asp:HyperLinkColumn>
                            <asp:HyperLinkColumn DataNavigateUrlField="oUrl" DataTextField="oUrl" 
                                HeaderText="Original URL"></asp:HyperLinkColumn>
            </Columns>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>


</asp:Content>