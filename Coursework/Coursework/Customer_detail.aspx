<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer_detail.aspx.cs" Inherits="Coursework.Customer_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mt-4">
        <h1 runat="server">Billing details of <span id="cust_name" runat="server"></span></h1>
        <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover mt-4" runat="server"></asp:GridView>
    </div>
</asp:Content>
