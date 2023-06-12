<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_Reg.aspx.cs" Inherits="Customer_Reg" %>


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
    <link href="css/regstyle.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            height: 29px;
            width: 637px;
            text-align: left;
        }

        .auto-style4 {
            height: 29px;
            width: 147px;
        }

        .auto-style6 {
            width: 637px;
        }

        .auto-style7 {
            width: 147px;
        }

        .auto-style8 {
            width: 637px;
            text-align: left;
        }

        .auto-style9 {
            width: 147px;
            height: 45px;
        }

        .auto-style10 {
            width: 637px;
            text-align: left;
            height: 45px;
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
                    <a class="navbar-brand" href="Customer_Reg.aspx">
                        <h1>Shipping Tech</h1>
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Home.aspx">Home</a></li>
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

        <section id="services" class="home-section  bg-gray">

            <h2 style="text-align: center">Customer Registration</h2>
            <table align="center" style="width: initial">


                <tr>
                    <td>
                        <asp:TextBox ID="txt_Role_ID" runat="server" Enabled="False" Font-Bold="True" ForeColor="Black" ReadOnly="True" ValidationGroup="Master" Width="135px" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Customer Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_custname" runat="server" ValidationGroup="Master" ForeColor="Black" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_custname" ErrorMessage="Enter Name" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="Contact No."></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txt_contactno" runat="server" ValidationGroup="Master" ForeColor="Black" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_contactno" ErrorMessage="Enter Contact Number" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_contactno" ErrorMessage="Invalid Contact Number" Font-Bold="True" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="Master"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Email ID"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txt_emailid" runat="server" TextMode="Email" ValidationGroup="Master" ForeColor="Black" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_emailid" ErrorMessage="Enter Email Address" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_emailid" ErrorMessage="Invalid Email Address" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Master"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" ValidationGroup="Master" ForeColor="Black" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_password" ErrorMessage="Enter Password" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txt_confirmpassword" runat="server" TextMode="Password" ValidationGroup="Master" ForeColor="Black" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_confirmpassword" ErrorMessage="Enter Password " Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confirmpassword" ErrorMessage="Both Password Must Be Same" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:CompareValidator>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="Question"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="dd_question" runat="server" ValidationGroup="Master" ForeColor="Black">
                            <asp:ListItem>Choose One</asp:ListItem>
                            <asp:ListItem>what is your childhood name ?</asp:ListItem>
                            <asp:ListItem>What is your vehicle number?</asp:ListItem>
                            <asp:ListItem>Which school you have studied?</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="dd_question" ErrorMessage="Select Question" Font-Bold="True" ForeColor="Red" InitialValue="Choose One" ValidationGroup="Master"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Answer"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txt_answer" runat="server" ValidationGroup="Master" ForeColor="Black" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_answer" ErrorMessage="Enter Answer" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btn_submit" runat="server" Font-Bold="True" ForeColor="Black" OnClick="btn_submit_Click" Text="Submit" ValidationGroup="Master" ClientIDMode="Static" Width="72px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                              <input id="Reset1" style="color: #000000; font-weight: bold" type="reset" value="Reset" /></td>
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
