<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="suggestions.aspx.cs" Inherits="Admin_suggestions" Title="suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center style="background-color: #CCFF99">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" width="80%"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("first_nm") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Last Name">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("last_nm") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Mobile">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Suggestions">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("msg") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        
        
    </asp:GridView>
</center>

</asp:Content>

