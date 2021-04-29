<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Coursework.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="padding-top: unset">
    <div class="container">
        <div>
            <h1>Login</h1>
            <div class="row mt-4">
                <div class="col-6">
                    <form runat="server">
                        <div class="form-group">
                          <label>Email address</label>
                            <asp:TextBox ID="email" CssClass="form-control" runat="server" Placeholder="example@gmail.com"></asp:TextBox>
                        </div>
                        <div class="form-group">
                          <label>Password</label>
                            <asp:TextBox TextMode="Password" CssClass="form-control" ID="password" runat="server" Placeholder="Password"></asp:TextBox>
                        </div>
                        <asp:Button CssClass="btn btn-primary" ID="login_btn" runat="server" Text="Login" OnClick="login_btn_Click"/>
                      </form>
                </div>
                <div class="col-6"></div>
            </div>
        </div>
    </div>
</body>
</html>
