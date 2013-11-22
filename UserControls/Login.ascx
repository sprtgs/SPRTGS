<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs"  Inherits="SPRTGS.UserControls.Login" %>
<link href="../Styles/SPRTGSStyles.css" rel="stylesheet" type="text/css" />


<table class="portletbackground" >
    <tr style="width: 65%">
        <td class="style1" style="color: #FFFFFF">
            Name</td>
        <td class="style1">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBox" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            Password</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="TextBox" 
                TextMode="Password" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="sitebutton" />
<asp:Button ID="Button2" runat="server" Text="Register" CssClass="sitebutton" />
<asp:Button ID="Button3" runat="server" Text="Forgot" CssClass="sitebutton" />
        </td>
    </tr>
</table>

