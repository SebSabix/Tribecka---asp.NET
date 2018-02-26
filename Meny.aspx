<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="Meny.aspx.cs" 
Inherits="Tribecka.Meny" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1 style="font-family: 'Poor Richard'; font-size: x-large"> 
    <span style="font-weight: normal; text-decoration: underline">A'la Carte Menu:</span></h1>

<p style="font-family: 'Poor Richard'; font-size: large">
    Starters:</p>
    <p>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Warm goats cheese, fig, golden beetroot and roasted walnut (125:-) </asp:ListItem>
            <asp:ListItem>Dill baked char, horseraddish and apple salad (130:-) </asp:ListItem>
            <asp:ListItem>Smoked msc certified halibut, egg cream, roasted rye bread and brown butter (145:-) </asp:ListItem>
            <asp:ListItem>Smoked venison, pickled pumpkin and a roasted garlic puree Mains (115:-) </asp:ListItem>
        </asp:DropDownList>
</p>
<p style="font-family: 'Poor Richard'; font-size: large">
    Main Courses:</p>
    <p style="font-family: 'Poor Richard'">
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Lemon roasted hake, chanterelle, carrot, allspice and a roasted cauliflower puree (235:-) </asp:ListItem>
            <asp:ListItem>Sole filled with a shellfish mouse, roasted leek and crushed celeriac (245:-) </asp:ListItem>
            <asp:ListItem>Thyme roasted veal rump, parsley root, pomme anna and a mustard and apple jus (235:-) </asp:ListItem>
            <asp:ListItem>Sage seared local chicken breast wrapped in parma ham, wild mushrooms, mashed potato and a rich red wine sauce (245:-)</asp:ListItem>
        </asp:DropDownList>
</p>
<p style="font-family: 'Poor Richard'; font-size: large">
    Dessert:</p>
    <p style="font-family: 'Poor Richard'">
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Ecologic choise; 115:- </asp:ListItem>
            <asp:ListItem>A selection of four cheeses and pickled fruit 160:-</asp:ListItem>
            <asp:ListItem>Two cheese pieces and pickled fruit 90:-</asp:ListItem>
            <asp:ListItem>Chocolate terrine, poached apple 110:- </asp:ListItem>
            <asp:ListItem>Vanilla semifreddo, warm cloudberries and a almond biscuit 110:- </asp:ListItem>
            <asp:ListItem>Petit Choux, lingon poached pear, caramel sauce and vanilla ice cream 110:- </asp:ListItem>
            <asp:ListItem>Creme brulé with a blackberry compote 130:-</asp:ListItem>
        </asp:DropDownList>
</p>
&nbsp;



</asp:Content>


