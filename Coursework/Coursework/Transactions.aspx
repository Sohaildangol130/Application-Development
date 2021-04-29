<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="Coursework.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center">
            <h1>Transactions</h1>
            <div class="add-btn">
                <a runat="server" href="~/Add_transaction">
                    <button type="button" class="btn btn-primary">Create bill</button>
                </a>
            </div>
        </div>
        <div class="mt-4">
            <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" SortExpression="Customer_id" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString2 %>" SelectCommand="SELECT * FROM [Billing_details]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
