<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="adminchangepass.aspx.cs" Inherits="Admin_adminchangepass" Title="Change Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
    <br />
    <br />
    <br />
    <br />
    <br />
    
<table align="center" 
            style="width: 30%; height: 260px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="2" style="height: 58px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Change Password</h1>
            </td>
        </tr>
        
        <tr>
        <td style="width: 169px; height: 85px" align="center"><label>Mobile</label></td>
        <td style="height: 64px" align="center"><asp:TextBox ID="txt_admincp_mobile" 
                placeholder="Mobile" runat="server" 
          BackColor="White" Height="25px" Width="170px"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><label>Email</label></td>
            <td style="height: 64px" align="center"> <asp:TextBox ID="txt_admincp_email"  placeholder="Email" runat="server" 
          BackColor="White" Height="25px" Width="170px"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><label>Old Password</label></td>
            <td style="height: 64px" align="center"> <asp:TextBox ID="txt_admincp_oldpass" TextMode="Password" placeholder="Old Password" runat="server" 
          BackColor="White" Height="25px" Width="170px"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><label>Change Password</label></td>
            <td style="height: 64px" align="center"><asp:TextBox ID="txt_admincp_changepass" TextMode="Password"  placeholder="Change Password" runat="server" 
          BackColor="White" Height="25px" Width="170px"></asp:TextBox></td>
       </tr>
       
       <tr>
       <td colspan="2" align="center">
              <asp:Button ID="btnchangepass_admin"  runat="server" 
          Text="Change Password" onclick="btnchangepass_admin_Click" BackColor="#0099CC" 
                  Font-Bold="True" Font-Size="Small" ForeColor="Black" Height="20px" 
                  Width="150px"   />
       </td>
       </tr>
</table>
<br />
<br />
<br />
<br />
<br />
</center>


  

</asp:Content>

