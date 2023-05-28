<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TryFinal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleCss/Login.css" rel="stylesheet" type="text/css" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">

        <nav>
            <input type="checkbox" id="check" />
            <label for="check" class="checkbtn">
                <i class="fas fa-bars"></i>
            </label>
            <label class="logo">Game Store</label>
            <ul>
               <li><a href="Home.aspx">Home</a></li>
                <li><a href="Login.aspx">LOGIN</a></li>
                <li><a href="Shop.aspx">SHOP</a></li>
                <li><a href="#">FEEDBACK</a></li>
            </ul>
        </nav>

            <div class="login-form">
           <asp:Label ID="Label1" runat="server" Text="Login Page" CssClass="form-heading"></asp:Label>
           <br />
           <br />
           <asp:Label ID="Label2" runat="server" Text="Email-ID: " CssClass="form-label"></asp:Label>
           <asp:TextBox ID="usertxt" runat="server" Width="250px" CssClass="form-input"></asp:TextBox>
           <br />
           <br />
           <asp:Label ID="Label3" runat="server" Text="Password: " CssClass="form-label"></asp:Label>
           <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password" Width="250px" CssClass="form-input"></asp:TextBox>
           <br />
           <br />
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisterPage.aspx" CssClass="form-link">Don't have an account? Register now</asp:HyperLink>
           <br />
           <br />
           <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="form-button" />
           <br />
           <asp:Label ID="Label4" runat="server" CssClass="form-message"></asp:Label>
        </div>

    </form>
</body>
</html>
