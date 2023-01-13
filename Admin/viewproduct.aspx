<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="Admin_viewproduct" Title="Admin viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table align="center">
    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical" Height="136px" 
        onselectedindexchanged="GridView5_SelectedIndexChanged" Width="1100px" AutoGenerateColumns="False" 
        onpageindexchanging="GridView5_PageIndexChanging" ForeColor="Black">
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Furniture Id">
                <ItemTemplate>
                    <asp:Label ID="lblfid" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Furniture Name">
                <ItemTemplate>
                    <asp:Label ID="lblfname" runat="server" Text='<%#Eval("p_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Label ID="Image3" runat="server" Text='<%#Eval("img") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="lblfprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
</table>
</center>
</asp:Content>

