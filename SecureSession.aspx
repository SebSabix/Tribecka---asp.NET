<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecureSession.aspx.cs" Inherits="Tribecka.SecureSession" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #FF6600">
    
        <asp:Label ID="Label1" runat="server" Text="Välkommen till ditt Login "></asp:Label>
        <br />
    
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Bokningar_Overview.aspx" style="color: #000000" 
            ForeColor="Blue">Kom till Bokningarna!</asp:HyperLink>
    
        &nbsp;ELLER
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Registrera dig!</asp:HyperLink>
    
        <br />
        <br />
        <asp:Button ID="btnLgUt" runat="server" onclick="Button1_Click" 
            Text="Logga ut" />
    
    </div>
    </form>
</body>
</html>
