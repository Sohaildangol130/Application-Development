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
        <div >
            <div class="row mt-4 justify-content-center align-items-center" style="height: 90vh">
                <div class="col-6">
                    <h1>Login to Veganly</h1>
                    <form runat="server" class="mt-4">
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
                <div class="col-6">
                    <img src="Content/Login.svg" style="width: 100%" />                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>
