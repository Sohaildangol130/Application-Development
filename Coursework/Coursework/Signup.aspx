<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Coursework.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <h1>Signup</h1>
     <form id="signup_form" runat="server">
        <div>
            <asp:Label ID="Label0" runat="server" Text="ID"></asp:Label>
            <asp:TextBox ID="user_id" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="First name"></asp:Label>
            <asp:TextBox ID="first_name" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Last name"></asp:Label>
            <asp:TextBox ID="last_name" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Phone number"></asp:Label>
            <asp:TextBox ID="phone_no" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="User type"></asp:Label>
            <asp:TextBox ID="user_type" runat="server" ReadOnly>Normal</asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
        </div>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
