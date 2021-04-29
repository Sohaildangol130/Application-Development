<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Coursework.Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center">
            <h1>Customers</h1>
            <div class="add-btn">
                <a runat="server" href="~/Add_customer">
                    <button type="button" class="btn btn-primary">Add customer</button>
                </a>                
            </div>
        </div>
        <div class="mt-4">
            <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
                    <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone_no" HeaderText="Phone_no" SortExpression="Phone_no" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="view_btn" CssClass="btn btn-link" runat="server"
                              CommandName="view"
                              CommandArgument='<%# Container.DataItemIndex %>'
                              Text="View" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString2 %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
