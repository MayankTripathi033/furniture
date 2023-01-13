<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="Admin_addproduct" Title="Addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<table align="center" 
        
        style="width: 50%; height: 700px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="3" style="height: 77px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Add New Product</h1>
                </td>
        </tr>
        
        <tr>
            <td align="center">
                <asp:Label ID="lblfid" runat="server" Text="Furniture Id"></asp:Label></td>
            <td >
               <asp:TextBox class="input--style-5" ID="txt_addproduct_pid" runat="server"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="valid_pid" runat="server" ControlToValidate="txt_addproduct_pid" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
            <td align="center"> 
                <asp:Image ID="Image3" Height="87px" Width="127px" runat="server" 
                    BackColor="White" BorderColor="Red" BorderStyle="Groove" /></td>
        </tr>
        <tr>
            <td align="center">
               <asp:Label ID="lblfname" runat="server" Text="Name"></asp:Label></td>
            <td >
                <asp:TextBox ID="txt_addproduct_pname" class="input--style-5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valid_pname" runat="server" ControlToValidate="txt_addproduct_pname" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblfprice" runat="server" Text="Price"></asp:Label></td>
            <td>
               <asp:TextBox ID="txt_addproduct_price" class="input--style-5" runat="server"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="valid_price" runat="server" ControlToValidate="txt_addproduct_price" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
            
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblimage" runat="server" Text="Image"></asp:Label></td>
            <td>
                <asp:FileUpload class="input--style-5" ID="FileUpload1" runat="server" /> 
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                     runat="server" ControlToValidate="FileUpload1"
                     ErrorMessage="*gif or jpeg files only" 
                     ValidationExpression="^.+\.(([jJ][pP][eE]?[gG])|([gG][iI][fF]))$" /> </td>
            <td><asp:Button  ID="btnupload" runat="server" Text="Upload" 
                      BackColor="#99CC00" Font-Bold="True" 
                     Font-Size="Large" Height="27px" Width="118px" 
                    onclick="btnupload_Click"  /></td>
        </tr>
        <tr>
            <td colspan="3" align="center"><asp:Button ID="btnfadd"  runat="server" 
               Text="Add Item" onclick="btnfadd_Click1" BackColor="#FF5050" Font-Bold="True" 
                    Font-Size="Large" Height="29px" Width="183px"  /></td>
        </tr>
</table>
<br />
<br />
<br />
<br />

</center>
</asp:Content>

