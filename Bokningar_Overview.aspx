<%@ Page Title="" Language="C#" MasterPageFile="~/MyAdminPage.Master" AutoEventWireup="true" CodeBehind="Bokningar_Overview.aspx.cs" Inherits="Tribecka.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblHdOv" runat="server" ForeColor="Red" 
    style="font-family: 'Poor Richard'; font-size: x-large; color: #3366FF;" 
    Text="Lägg till, ta bort och uppdatera bokningsdata:"></asp:Label>
<asp:SqlDataSource ID="sds_Overview" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [BokningTbl] WHERE [BokningsID] = @BokningsID" 
    InsertCommand="INSERT INTO [BokningTbl] ([Namn], [TelNr], [AntPlts], [Tid]) VALUES (@Namn, @TelNr, @AntPlts, @Tid)" 
    SelectCommand="SELECT * FROM [BokningTbl]" 
    UpdateCommand="UPDATE [BokningTbl] SET [Namn] = @Namn, [TelNr] = @TelNr, [AntPlts] = @AntPlts, [Tid] = @Tid WHERE [BokningsID] = @BokningsID">
    <DeleteParameters>
        <asp:Parameter Name="BokningsID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Namn" Type="String" />
        <asp:Parameter Name="TelNr" Type="String" />
        <asp:Parameter Name="AntPlts" Type="Int32" />
        <asp:Parameter Name="Tid" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Namn" Type="String" />
        <asp:Parameter Name="TelNr" Type="String" />
        <asp:Parameter Name="AntPlts" Type="Int32" />
        <asp:Parameter Name="Tid" Type="DateTime" />
        <asp:Parameter Name="BokningsID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    CellSpacing="2" DataKeyNames="BokningsID" DataSourceID="sds_Overview">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="BokningsID" HeaderText="BokningsID" 
            InsertVisible="False" ReadOnly="True" SortExpression="BokningsID" />
        <asp:BoundField DataField="Namn" HeaderText="Namn" SortExpression="Namn" />
        <asp:BoundField DataField="TelNr" HeaderText="TelNr" SortExpression="TelNr" />
        <asp:BoundField DataField="AntPlts" HeaderText="AntPlts" 
            SortExpression="AntPlts" />
        <asp:BoundField DataField="Tid" HeaderText="Tid" SortExpression="Tid" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" 
        style="font-family: 'Poor Richard'; font-size: x-large; color: #3366FF" 
        Text="Insert data:"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataSourceID="sds_Overview" Height="111px" Width="240px">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <asp:Label ID="Label2" runat="server" 
        style="font-family: 'Poor Richard'; font-size: large" 
        Text="(Nytt ID behöver inte skrivas in, det sköts automatiskt.)"></asp:Label>
<br />
<asp:Button ID="btnLgOut" runat="server" Height="32px" onclick="btnLgOut_Click" 
    Text="Logga ut!" Width="80px" />
</asp:Content>
