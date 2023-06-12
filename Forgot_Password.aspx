<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot_Password.aspx.cs" Inherits="Forgot_Password" %>

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
        .auto-style1 {
            width: 177px;
        }
    </style>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
        
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
            <a class="navbar-brand" href="Forget_password.aspx">
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
                 <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="Customer_Login.aspx">Customer</a></li>
                        <li><a href="Transporter_Login.aspx">Transporter</a></li>
                        <li><a href="Team_Login.aspx">Verification Team</a></li>
                        <li><a href="Admin_Login.aspx">Admin</a></li>
                    </ul>
                </li>
                <li><a href="Home.aspx">Portfolio</a></li>
                <li><a href="Home.aspx">Service</a></li>
                <li><a href="#">About</a></li>
                <li><a href="Home.aspx">Contact</a></li>

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

    <form id="form1" runat="server">


  
<!-- /Section: intro -->

<section id="services" class="home-section  bg-gray">

            <h2 style="text-align:center"> Forgot Password </h2>
    
            <table align="center" style="height:283px; width: 618px;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Email ID"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_email" runat="server" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter Email Id" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter Valid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Master"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Question"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dd_question" runat="server" ForeColor="Black">
                            <asp:ListItem>Choose One</asp:ListItem>
                                  <asp:ListItem>what is your childhood name ?</asp:ListItem>
                                  <asp:ListItem>What is your vehicle number?</asp:ListItem>
                                  <asp:ListItem>Which school you have studied?</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dd_question" ErrorMessage="Select Question" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="Answer"></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="txt_answer" runat="server" TextMode="SingleLine" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_answer" ErrorMessage="Enter Answer" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                   </td>
               </tr>

                <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Password"></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_password" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                   </td>
               </tr>
                <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Confrim Password"></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="txt_confirmpassword" runat="server" TextMode="Password" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_confirmpassword" ErrorMessage="Enter Confirm Password" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confirmpassword" ErrorMessage="Password Doesn't Match" ForeColor="Red" ValidationGroup="Master"></asp:CompareValidator>
                   </td>
               </tr>
                
                 <tr>
                    <td class="auto-style1">

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">

                    </td>
                    <td>

                        <asp:Button ID="btn_update" runat="server" Font-Bold="True" ForeColor="Black" Text="Update" ValidationGroup="Master" OnClick="btn_update_Click" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_cncel" runat="server" Font-Bold="True" ForeColor="Black" Text="Cancel" OnClick="btn_cncel_Click" />

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">

                        &nbsp;</td>
                    <td>

                        <asp:Label ID="lbl_status" runat="server" ForeColor="Red" ></asp:Label>

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
