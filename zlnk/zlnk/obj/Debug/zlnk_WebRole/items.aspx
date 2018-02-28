<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="zlnk_WebRole.items" MasterPageFile="~/main.master" %>
<asp:Content ID="main" ContentPlaceHolderID="phMain" runat="server">

    <br />
    <asp:TextBox ID="txte7em" runat="server" TextMode="Password"></asp:TextBox>
    <asp:Button ID="btnDastor" runat="server" onclick="btnDastor_Click" Text="Go" />

    <br />
    <br />

Users

<asp:DataGrid ID="UsersGrid" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditItemStyle BackColor="#2461BF" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <AlternatingItemStyle BackColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <Columns>
                            <asp:TemplateColumn>
                    <HeaderStyle BackColor="Azure" Font-Bold="true"  Width="60"/>
                    <HeaderTemplate>
                        delete
                    </HeaderTemplate>
                    <ItemStyle Width="60" />
                    <ItemTemplate>
                    <center>
                        <asp:LinkButton ID="deleteButton" runat="server" CommandArgument='<%# BuildKey(Container.DataItem) %>'
                             OnClick="deleteUserButton_Click">
                            delete
                        </asp:LinkButton>
                         - 
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# BuildKey(Container.DataItem) %>'
                             OnClick="ActivateUserButton_Click">
                            toogle Activation
                        </asp:LinkButton>
                        
                        </center>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>

<br /><br /><br />
Links
<asp:DataGrid ID="zlinksGrid" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <AlternatingItemStyle BackColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                            <asp:TemplateColumn>
                    <HeaderStyle BackColor="Azure" Font-Bold="true"  Width="60"/>
                    <HeaderTemplate>
                        delete
                    </HeaderTemplate>
                    <ItemStyle Width="60" />
                    <ItemTemplate>
                    <center>
                        <asp:LinkButton ID="deletezlinkButton" runat="server" CommandArgument='<%# BuildKey(Container.DataItem) %>'
                             OnClick="deletezlinkButton_Click">
                            delete
                        </asp:LinkButton>
                        </center>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>

</asp:Content>
