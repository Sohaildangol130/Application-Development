<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Coursework._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mt-4">
        <h1 runat="server" id="welcome_note"></h1>

        <div class="d-flex mt-5" style="flex-direction: column; gap: 20px">
            <div class="">
                <h4>Almost out of stock items</h4>
                <p>Add more items to the stock!</p>
                <asp:GridView ID="almost_out_of_stock" CssClass="table table-condensed table-hover" runat="server"></asp:GridView>
            </div>
            <div class="">
                <h4>Out of stock items</h4>
                <p>Add more items to the stock!</p>
                <asp:GridView ID="out_of_stock" CssClass="table table-condensed table-hover" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
