<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_item.aspx.cs" Inherits="Coursework.Add_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h1>Add items</h1>
        <div class="row mt-4">
            <div class="col-6">
                <form>
                    <div class="form-group">
                        <label>Item name</label>
                        <asp:TextBox CssClass="form-control" ID="item_name" placeholder="Item name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="item_name" ErrorMessage="Item name is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                      <label>Description</label>
                      <asp:TextBox TextMode="MultiLine" CssClass="form-control" ID="description" placeholder="Item description" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="description" ErrorMessage="Description is missing." ForeColor="Red"></asp:RequiredFieldValidator>                    
                    </div>
                    <div class="form-group">
                        <label for="sel1">Category</label>
                        <div>
                            <asp:DropDownList CssClass="form-select" ID="category" runat="server" DataTextField="Category_name" DataValueField="Id" DataSourceID="SqlDataSource1"></asp:DropDownList>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="category" ErrorMessage="Category is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" SelectCommand="SELECT * FROM [Category]">
                        </asp:SqlDataSource>
                      </div>    
                    <div class="form-group">
                      <label>Price</label>
                      <asp:TextBox TextMode="Number" CssClass="form-control" ID="price" placeholder="Price" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="price" ErrorMessage="Price is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>         
                    <div class="form-group">
                      <label>Total on stock</label>
                      <asp:TextBox TextMode="Number" CssClass="form-control" ID="stock" placeholder="Total" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="stock" ErrorMessage="Total no. of items is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>          
                    <div class="form-group">
                      <label>Purchased date</label>
                      <asp:TextBox TextMode="Date" CssClass="form-control" ID="purchase_date" placeholder="Select date" runat="server"></asp:TextBox>
                    </div>               
                    <asp:Button ID="Add_button" runat="server" CssClass="btn btn-primary" Text="Add" OnClick="Add_button_Click" />
                </form>
            </div>
            <div class="col-6"></div>
        </div>
    </div>
</asp:Content>
