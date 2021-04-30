<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_category.aspx.cs" Inherits="Coursework.Add_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mt-4">
        <h1>Add category</h1>
        <div class="row mt-4">
            <div class="col-6">
                <form action="/">
                    <div class="form-group">                        
                        <label>Category name</label>
                        <div>
                            <asp:TextBox CssClass="form-control" ID="category_name" runat="server" placeholder="Category" ControlToValidate="username" ErrorMessage="Please enter a user name"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="category_name" ErrorMessage="Category name is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>  
                    </div>
                    <asp:Button ID="Button2" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="Button2_Click"/>
                </form>
            </div>
            <div class="col-6"></div>
        </div>
    </div>
</asp:Content>
