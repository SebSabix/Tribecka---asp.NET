<%@ Page Title="" Language="C#" MasterPageFile="~/MyAdminPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tribecka.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height: 188px; width: 539px">
        <tr>
            <td style="height: 34px; text-align: right; width: 80px">
                <span style="font-family: 'Poor Richard'; font-size: x-large">Användarnamn</span><span 
                    style="font-family: 'Poor Richard'; font-size: x-large; text-align: right"><b>:</b></span><b> </b></td>
            <td style="height: 34px">
                <asp:TextBox ID="txtAnv" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Du måste skriva in användarnamn!" ControlToValidate="txtAnv" 
                    ForeColor="Red" style="font-family: 'Poor Richard'; font-size: large"></asp:RequiredFieldValidator>
            </td>       
        </tr>
        <tr>
            <td style="font-family: 'Poor Richard'; font-size: x-large; width: 80px; text-align: left">
                Lösenord:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtLösen" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Du måste skriva in lösenord!" ControlToValidate="txtLösen" 
                    ForeColor="Red" style="font-family: 'Poor Richard'; font-size: large"></asp:RequiredFieldValidator>
            </td>       
        </tr>
        <tr>
            <td style="width: 80px">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="86px" 
                    onclick="btnLogin_Click" 
                    style="font-family: 'Poor Richard'; font-size: large" /><br />
                <asp:Label ID="lblError" runat="server" Text="" 
                    style="font-family: Verdana; font-size: large"></asp:Label>
            </td>                 
        </tr>        
        <tr>
            <td style="width: 80px">
                <asp:Label ID="Label1" runat="server" Visible="False" 
                    style="font-family: Verdana"></asp:Label>
                <asp:CheckBox ID="cbox" runat="server" oncheckedchanged="cbox_CheckedChanged" 
                    Text="Spara" />
                <asp:Label ID="lblsparad" runat="server" Text="Data har sparats!"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
