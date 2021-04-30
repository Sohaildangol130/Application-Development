<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_transaction.aspx.cs" Inherits="Coursework.Add_transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h1>Create bill</h1>
        <div class="row mt-4">
            <div class="col-6">
                <div class="form-group">
                    <label>Customer</label>
                    <div>
                        <asp:DropDownList CssClass="form-select" ID="customer" runat="server" DataSourceID="SqlDataSource1" DataTextField="First_name" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString2 %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>                    
                    </div>
                </div>
                <div class="form-group">
                    <label>Item</label>
                    <div>
                        <asp:DropDownList CssClass="form-select" ID="item" runat="server" DataSourceID="SqlDataSource2" DataTextField="Item_name" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString2 %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <label>Quantity</label>
                    <asp:TextBox TextMode="Number" ID="quantity" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="quantity" ErrorMessage="Quantity is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Billed on</label>
                    <asp:TextBox TextMode="Date" ID="bill_date" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="bill_date" ErrorMessage="Billing is missing." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="create_btn" CssClass="btn btn-primary" runat="server" Text="Create bill" OnClick="create_btn_Click" />
                </div>
            </div>            
        </div>
    </div>
</asp:Content>
