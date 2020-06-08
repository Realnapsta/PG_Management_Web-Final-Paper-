
 <%--   Create a functionality in your web App that will enable a user to search for an Artist, and
if the Artist is found, the user can then select it to display details of the Artist as well as the
list of all the Arts/painting created by that artist on a new webpage.
     
     The Codes below is the Answer to Question 3B 
     --%>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Artists.aspx.vb" Inherits="PG_Management_Web_Final_Paper_.Artists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PG_DatabaseConnectionString %>" 
        SelectCommand="SELECT * FROM [Artist_TB]"></asp:SqlDataSource>
    <asp:Label ID="lblSearch" runat="server" AssociatedControlID="txtIDSearch" 
        Text="Enter Id to Search"></asp:Label>
    <asp:TextBox ID="txtIDSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Artist_ID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Width="563px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Artist_ID" HeaderText="Artist_ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="Artist_ID" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" 
                SortExpression="FullName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                SortExpression="PhoneNumber" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
</asp:Content>
