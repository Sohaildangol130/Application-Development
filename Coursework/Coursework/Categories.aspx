<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Coursework.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center">
            <h1>Categories</h1>
            <div class="add-btn">
                <a runat="server" href="~/Add_category">
                    <button type="button" class="btn btn-primary">Add category</button>
                </a>                
            </div>
        </div>
        <div class="mt-4">
            <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Category_name" HeaderText="Category_name" SortExpression="Category_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString2 %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
