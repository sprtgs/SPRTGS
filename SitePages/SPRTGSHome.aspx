<%@ Page Title="" Language="C#" MasterPageFile="~/SPRTGS.Master" AutoEventWireup="true" CodeBehind="SPRTGSHome.aspx.cs" Inherits="SPRTGS.SitePages.SPRTGSHome" %>
<%@ Register src="../UserControls/Login.ascx" tagname="Login" tagprefix="uc1" %>
<%@ Register src="../UserControls/VendorOffers.ascx" tagname="VendorOffers" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td rowspan="2" style="width: 75%">
            &nbsp;</td>
        <td align="right" style="width: 25%">
            <uc1:Login ID="Login1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="right">
            <uc2:VendorOffers ID="VendorOffers1" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>
