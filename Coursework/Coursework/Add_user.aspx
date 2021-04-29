<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_user.aspx.cs" Inherits="Coursework.Add_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h1>Add user</h1>
        <div class="row mt-4">
            <div class="col-6">
                <form>
                    <div class="form-group">
                        <label>Username</label>
                        <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="username" ErrorMessage="Username is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
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
                        <label>User type</label>
                        <div>
                            <asp:DropDownList ID="user_type" runat="server">
                                <asp:ListItem Text="Admin" Value="Admin" />
                                <asp:ListItem Text="Non Admin" Value="Non Admin" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                      <label>Password</label>
                        <asp:TextBox TextMode="Password" CssClass="form-control" ID="password" runat="server" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password" ErrorMessage="Password is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="create_btn" runat="server" CssClass="btn btn-primary" Text="Create user" OnClick="create_btn_Click" />
                    </div>                    
                </form>
            </div>
            <div class="col-6"></div>
        </div>
    </div>
</asp:Content>
