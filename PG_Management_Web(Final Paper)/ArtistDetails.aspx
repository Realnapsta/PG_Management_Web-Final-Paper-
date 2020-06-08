<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ArtistDetails.aspx.vb" Inherits="PG_Management_Web_Final_Paper_.ArtistDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PG_DatabaseConnectionString %>" 
        SelectCommand="SELECT * FROM [Artist_TB] WHERE ([Artist_ID] = @Artist_ID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="Artist_ID" 
                SessionField="Collector_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Artist_ID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None">
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
