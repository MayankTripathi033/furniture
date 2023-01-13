<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="customare.aspx.cs" Inherits="customare" Title="customerData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br />
 <asp:GridView Text-align="center" ID="GridView01" runat="server" 
        AllowPaging="True" CellPadding="3" 
        ForeColor="Black" GridLines="Vertical" Height="332px" 
        onpageindexchanging="GridView01_PageIndexChanging" 
       
        onselectedindexchanged="GridView01_SelectedIndexChanged" Width="1100px" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" Font-Size="Medium" 
        onrowdeleting="GridView01_RowDeleting" onrowediting="GridView01_RowEditing">
        <PagerSettings Mode="NumericFirstLast" />
        <Columns>
            
            <asp:TemplateField HeaderText="Id">
            <ItemTemplate>
                <asp:Label ID="lblid" runat="server" Text='<%#Eval("o_id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%#Eval("cname") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="Username">
            <ItemTemplate>
                <asp:Label ID="lblusername1" runat="server" Text='<%#Eval("username") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtusername1" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="lblgender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Mobile">
            <ItemTemplate>
                <asp:Label ID="lblmobile" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label ID="lblpass" runat="server" Text='<%#Eval("pass") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:CommandField ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
</center>

</asp:Content>

