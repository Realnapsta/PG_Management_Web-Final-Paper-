<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Collectors.aspx.vb" Inherits="PG_Management_Web_Final_Paper_.Collectors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<%--    Using the Database created in 2 (a), you are required to create a website/web App, design
an appropriate webpage, connect it to the database, retrieve and display all Collector
records in a GridView control on the Webpage.
    
    below is the Answers to Question 2A together with a screen shot
    --%>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PG_DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Collector_TB]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Collector_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="690px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Collector_ID" HeaderText="Collector_ID" InsertVisible="False" ReadOnly="True" SortExpression="Collector_ID" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
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
