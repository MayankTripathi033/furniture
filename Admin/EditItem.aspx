<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="EditItem.aspx.cs" Inherits="Admin_Edit_Item" Title="UpgradProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" onpageindexchanging="GridView1_PageIndexChanging" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical" Width="1100px" ForeColor="Black" 
            onrowcancelingedit="GridView1_RowCancelingEdit">
        
        <Columns>
            <asp:TemplateField HeaderText="furniture_id">
            <ItemTemplate>
                <asp:Label ID="lblfid" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="name">
            <ItemTemplate>
                <asp:Label ID="lblfname" runat="server" Text='<%#Eval("p_name") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="lblimage" runat="server" Height="80px" Width="70px" ImageUrl='<%#Eval("img") %>'/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image3" runat="server" Height="80px" Width="70px" ImageUrl='<%#Eval("img") %>'/>
                </EditItemTemplate>
                </asp:TemplateField>
            
            
            
            <asp:TemplateField HeaderText="price">
            <ItemTemplate>
                <asp:Label ID="lblfprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtfprice" runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
               
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="True" />
               
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

