<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_customer.aspx.cs" Inherits="Coursework.Add_customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h1>Add customer</h1>
        <div class="row mt-4">
            <div class="col-6">
                <form>
                    <div class="form-group">
                        <label>First name</label>
                        <asp:TextBox CssClass="form-control" ID="first_name" runat="server" placeholder="First name"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="first_name" ErrorMessage="First name is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                      <label>Last name</label>
                        <asp:TextBox CssClass="form-control" ID="last_name" runat="server" placeholder="Last name"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="last_name" ErrorMessage="Last name is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                      <label>Email</label>
                        <asp:TextBox TextMode="Email" CssClass="form-control" ID="email" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="email" ErrorMessage="Email is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                      <label>Phone number</label>
                        <asp:TextBox TextMode="Number" CssClass="form-control" ID="phone_number" runat="server" placeholder="Phone number"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="phone_number" ErrorMessage="Phone number is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="add_btn" CssClass="btn btn-primary" runat="server" Text="Add customer" OnClick="add_btn_Click" />
                    </div>
                    
                </form>
            </div>
            <div class="col-6"></div>
        </div>
    </div>
</asp:Content>
