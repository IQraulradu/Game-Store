<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="TryFinal.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleCss/Register.css" rel="stylesheet" type="text/css" />
        <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        
         <!-- Nav --> 
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

         <div class="my-div">
            <asp:Label ID="Label1" runat="server" CssClass="label-style" Text="Register"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="label-style" Text="Name: "></asp:Label>
            <asp:TextBox ID="nametxt" runat="server" style="margin-left: 0px" CssClass="input-style" Width="250px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="label-style" Text="Email-id:  "></asp:Label>
            <asp:TextBox ID="emailtxt" runat="server" style="margin-left: 2px" CssClass="input-style" Width="250px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" CssClass="label-style" Text="Password: "></asp:Label>
            <asp:TextBox ID="passwordtxt" runat="server" Width="250px" CssClass="input-style" TextMode="Password"></asp:TextBox>
            <br />
            <br /> 
            <asp:Button ID="Button1" runat="server" CssClass="btn-style1and2" Text="Register" OnClick="BtnRegister_Click" />
             <br />
            <!--<asp:Button ID="Button2" runat="server" CssClass="btn-style1and2" Text="Login" OnClick="btnHome_Click" /> !-->
            <asp:Label ID="Label5" runat="server" CssClass="form-message"></asp:Label>
            
        </div>
    </form>
</body>
</html>
