<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="orderdata.aspx.cs" Inherits="Admin_orderdata" Title="Order Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br/>
<br />
<br />
<br />

    <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" Height="265px"  Width="1100px" ForeColor="Black" 
            GridLines="Vertical" AllowPaging="True" Font-Bold="True" 
        HorizontalAlign="Center" onpageindexchanging="GridView2_PageIndexChanging" 
            onrowdeleting="GridView2_RowDeleting">
         <PagerSettings NextPageText="Next" PreviousPageText="Previous" />
         <Columns>
         <asp:TemplateField HeaderText="order id">
            <ItemTemplate>
                <asp:Label ID="lblfid" runat="server" Text='<%#Eval("o_id") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Product id">
            <ItemTemplate>
                <asp:Label ID="lblpid" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
           
           <asp:TemplateField HeaderText="Product Name">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Amount">
            <ItemTemplate>
                <asp:Label ID="lblamt" runat="server" Text='<%#Eval("amount") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
          
          <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:Label ID="lblqty" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Total">
            <ItemTemplate>
                <asp:Label ID="lbltot" runat="server" Text='<%#Eval("amount") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>    
            
         
        
        <asp:TemplateField HeaderText="Order Date">
            <ItemTemplate>
                <asp:Label ID="lbl_order_date" runat="server" Text='<%#Eval("date_time") %>'></asp:Label>
            </ItemTemplate>
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

