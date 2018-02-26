<%@ Page Title="" Language="C#" MasterPageFile="~/MyAdminPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Tribecka.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; text-decoration: underline">
        <strong>Registreringssida</strong></p>
    <table style="width: 58%; height: 45px">
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; width: 114px; height: 26px">
                Användarnamn:</td>
            <td style="height: 26px;">
                <asp:TextBox ID="txtAnvR" runat="server" MaxLength="15"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtAnvR" ErrorMessage="Fyll i Användarnamn!" 
                    ForeColor="#FF3300" style="font-family: 'Poor Richard'"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; width: 114px">
                Lösenord:</td>
            <td>
                <asp:TextBox ID="txtLösR" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtLösR" ErrorMessage="Fyll i Lösenord!" ForeColor="#FF3300" 
                    style="font-family: 'Poor Richard'"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnSpara" runat="server" Height="34px" onclick="btnSpara_Click" 
        Text="Spara" Width="81px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset1" style="height: 34px; width: 81px" type="reset" 
        value="Gör om" />&nbsp;
    <br />
</asp:Content>
