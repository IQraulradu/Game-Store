<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="TryFinal.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleCss/Shop.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/0af1008248.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <title>Shop</title>
</head>
<body>
    <form id="form1" runat="server">


        <!-- NAV !-->

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
                <li><a href="Feedback.aspx">FEEDBACK</a></li>
            </ul>
        </nav>

       
                 <div class="row">
            <div class="competitive">
                <img src="Photo/1.jpeg">
                    <div class="layer">
                        <a href="StreamingMaster.aspx" alt="website"><h3>Streaming components</h3></a>
                    </div>
            </div>
                    
        <div class="competitive">
            <img src="Photo/1.jpg">
                <div class="layer">
                    <a href="StreamingMaster.aspx" alt="website"><h3>Games</h3></a>
                </div>
        </div>
    
            <div class="competitive">
                <img src="Photo/cons.jpg">
                    <div class="layer">
                        <a href="StreamingMaster.aspx" alt="website"><h3>Console</h3></a>
                    </div>
                        
            </div> 
        </div>

        <!-- footer !-->

       <footer class="footer-distributed">
      <div class="footer-left">
        <h2>Game Store</h2>

        <p class="footer-links">
          <a href="Home.aspx" class="link-1">HOME</a>
          
          <a href="Login.aspx">LOGIN</a>
        
          <a href="Shop.aspx">SHOP</a>
                    
          <a href="Feedback.aspx">FEEDBACK</a>
        </p>

        <p class="footer-company-name">GameStore © 2023</p>
      </div>

      <div class="footer-center">

        <div>
          <i class="fa fa-map-marker"></i>
          <p>Targu Mures</p>
        </div>

        <div>
          <i class="fa fa-phone"></i>
          <p>+40 757 123 345</p>
        </div>

        <div>
          <i class="fa fa-envelope"></i>
          <p><a href="#">GameStore@gmail.com</a></p>
        </div>

      </div>

      <div class="footer-right">    
        <p class="footer-company-about">
            <span></span>
           If you want, you can follow us on the social <br/> networks below where you can find us
        </p>

        <div class="footer-icons">
          <a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a>
          <a href="https://www.twitter.com/" target="_blank"><i class="fa fa-twitter"></i></a>
          <a href="https://www.linkedin.com/" target="_blank"><i class="fa fa-linkedin"></i></a>
          <a href="https://www.github.com/" target="_blank"><i class="fa fa-github"></i></a>
        </div>
      </div>

    </footer>

      

    </form>
</body>
</html>
