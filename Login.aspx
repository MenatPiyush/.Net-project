<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" />

    <!-- Squad theme CSS -->
    <link href="css/login.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style4 {
            width: 161px;
            height: 46px;
        }
        .auto-style10 {
            width: 161px;
            height: 40px;
        }
        .auto-style17 {
            width: 161px;
            height: 18px;
        }
        .auto-style19 {
            width: 161px;
            height: 33px;
        }
        .auto-style21 {
            height: 46px;
            width: 305px;
        }
        .auto-style22 {
            height: 33px;
            width: 305px;
        }
        .auto-style23 {
            height: 18px;
            width: 305px;
        }
        .auto-style24 {
            height: 53px;
            margin-left: 80px;
            width: 305px;
        }
        .auto-style25 {
            height: 40px;
            width: 305px;
        }
        .auto-style26 {
            width: 161px;
            height: 53px;
        }
        .auto-style27 {
            height: 58px;
        }
    </style>
    </head>
  <body id="page-top" data-spy="scroll" data-target=".navbar-custom">
        <form id="form1" runat="server">
<!-- Preloader -->
<div id="preloader">
    <div id="load"></div>
</div>

<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="Login.aspx">
                <h1>Shipping Tech</h1>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="Home.aspx">Home</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Registration<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="Customer_Reg.aspx" >Customer</a></li>
                        <li><a href="Transporter_reg.aspx" >Transporter</a></li>
                     
                    </ul>
                </li>
                 <li><a href="Login.aspx">Login</a></li>
                <li><a href="Home.aspx">Portfolio</a></li>
                <li><a href="Home.aspx">Service</a></li>
                <li><a href="Home.aspx">Contact</a></li>
                <li><a href="#">About</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Section: intro -->
<section id="intro" class="intro">

    <div class="slogan">
        <h2>WELCOME TO <span class="text_color">Shipping Tech</span> </h2>

        <h4>Click To Pick</h4>
    </div>
    <br />
    <br />
    <br />
    <br />
</section>
<!-- /Section: intro -->

<section id="services" class="home-section  bg-gray">

            <h2 style="text-align:center"> Login </h2>
            <table align="center" style="height:400%; width: 489px;">
                
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txt_user" runat="server" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_user" ErrorMessage="Enter Username" ForeColor="Red" ValidationGroup="Master" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txt_passw" runat="server" TextMode="Password" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_passw" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="Master" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style17">
                        </td>
                    <td class="auto-style23">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                </tr>
               
                
              
               
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style24">
                        <asp:Button ID="btn_login" runat="server" Font-Bold="True" ForeColor="Black" Text="Login" ValidationGroup="Master" OnClick="btn_login_Click" />
                        &nbsp;
                        &nbsp;<asp:Button ID="btn_cncel" runat="server" Font-Bold="True" ForeColor="Black" Text="Cancel" OnClick="btn_cncel_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style25">
                        &nbsp;&nbsp;&nbsp;
                       <a href="Forgot_password.aspx"><asp:HyperLink ID="hl_forgotpassword" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/Forgot_Password.aspx">Forgot Password ?</asp:HyperLink></a>
                    </td>
                </tr>
             
            </table>




    </section> 
               
        <footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="wow shake" data-wow-delay="0.4s">
                    <div class="page-scroll marginbot-30">
                        <a href="#intro" id="totop" class="btn btn-circle">
                            <i class="fa fa-angle-double-up animated"></i>
                        </a>
                    </div>
                </div>
                <p>&copy;Copyright 2017 - Shipping Tech. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>

<!-- Core JavaScript Files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.scrollTo.js"></script>
<script src="js/wow.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="js/custom.js"></script>
        </form>
</body>
</html>

