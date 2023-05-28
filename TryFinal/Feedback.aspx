<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="TryFinal.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <script src="https://kit.fontawesome.com/0af1008248.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

     <style type="text/css">
       @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);
        * {
            padding: 0;
            margin: 0;
            text-decoration: none;
            list-style: none;
            box-sizing: border-box;
        }

        body {
            font-family: Open Sans;
            overflow-x: hidden;
            background-color:bisque;
        }

        nav {
            background: #000000;
            height: 80px;
            width: 100%;
        }

        label.logo {
            color: white;
            font-size: 35px;
            line-height: 80px;
            padding: 0 100px;
            font-weight: bold;
        }

        nav ul {
            float: right;
            margin-right: 20px;
        }

            nav ul li {
                display: inline-block;
                line-height: 80px;
                margin: 0 5px;
            }

                nav ul li a {
                    color: white;
                    font-size: 17px;
                    padding: 7px 13px;
                    border-radius: 3px;
                    text-transform: uppercase;
                    transition: background-color 0.5s ease;
                }

        a.active, a:hover {
            background: #7acef8;
        }

        .checkbtn {
            font-size: 30px;
            float: right;
            line-height: 80px;
            margin-right: 40px;
            cursor: pointer;
            display: none;
        }

        #check {
            display: none;
        }

        @media (max-width: 952px) {
            label.logo {
                font-size: 30px;
                padding-left: 50px;
            }

            nav ul li a {
                font-size: 16px;
            }
        }

        @media (max-width: 858px) {
            .checkbtn {
                color: white;
                display: block;
            }

            ul {
                position: fixed;
                width: 100%;
                height: 100vh;
                background: #2c3e50;
                top: 80px;
                left: -100%;
                text-align: center;
                transition: all .5s;
            }

            nav ul li {
                display: block;
                margin: 50px;
                line-height: 30px;
            }

                nav ul li a {
                    font-size: 20px;
                }

            a:hover, a.active {
                background: none;
                color: #0082e6;
            }

            #check:checked ~ ul {
                left: 0;
            }
        }

        /*Feedback*/

        .feedback-div {
            display: flex;
            flex-direction: column;
            align-items: center;
            max-width: 1000px;
            margin: 0 auto;
            padding: 75px;
            background-color: #f2f2f2;
            border-radius: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            position: relative;
            top: 20px;
        }



        .input1 {
            font-size: 16px;
            color: #333333;
            line-height: 1.2;
            width: 100%;
            height: 40px;
            border: none;
            border-bottom: 2px solid #cccccc;
            background: transparent;
            padding: 5px 0;
            margin-bottom: 25px;
        }

            .input1:focus {
                outline: none;
                border-color: #4c7ad3;
            }

        .contact1-aspx-btn {
            background-color: #4100ff;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            .contact1-aspx-btn:hover {
                background-color: #000000;
                color:red;
            }

        h1 {
            font-size: 24px;
            color: #333333;
            margin-bottom: 25px;
            text-align: center;
        }



    </style> 

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
                <li><a href="Feedback.aspx">FEEDBACK</a></li>
            </ul>
        </nav>
        <div class="feedback-div">
            <h1>Feedback</h1>
           <div class="wrap-input1" data-validate="Name is required">
               <input class="input1" type="text" name="name" placeholder="Name" id="txtName"  runat="server" />
           </div>

            <div class="wrap-input1" data-validate="Email is required">
               <input class="input1" type="text" name="name" placeholder="Email" id="txtEmail" runat="server"/>
           </div>

        <div class="wrap-input1" data-validate="Subject is required">
               <input class="input1" type="text" name="name" placeholder="Subject"  id="txtSubject" runat="server"/>
           </div>

        <div class="wrap-input1" data-validate="Message is required">
               <input class="input1" type="text" name="name" placeholder="Message" id="txtMessage" runat="server"/>
           </div>

        <div class="button-contact1">
           <button class="contact1-aspx-btn" id="btnSend" runat="server" onserverclick="btnSend_ServerClick">
               <span>Send</span>
           </button>
        </div>
            </div>

    </form>
</body>
</html>
