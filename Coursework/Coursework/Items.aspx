<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="Coursework.Items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center">
            <h1>Items</h1>
            <div class="add-btn">
                <a runat="server" href="~/Add_item">
                    <button type="button" class="btn btn-primary">Add item</button>
                </a>
            </div>
        </div>
        <div class="mt-4">
            <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                        <asp:BoundField DataField="Last_stocked_on" HeaderText="Last_stocked_on" SortExpression="Last_stocked_on" />
                        <asp:BoundField DataField="Category_id" HeaderText="Category_id" SortExpression="Category_id" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString2 %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
