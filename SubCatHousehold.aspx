<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubCatHousehold.aspx.cs" Inherits="SubCatHousehold" %>

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
    <link href="css/Category.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 20px;
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
            <a class="navbar-brand" href="SubCatVehicle.aspx">
              <h1>Shipping Tech</h1>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="Home.aspx">Home</a></li>
                <li><a href="Home.aspx">Portfolio</a></li>
                <li><a href="Home.aspx">Service</a></li>
                <li><a href="#">About</a></li>
                <li><a href="Home.aspx">Contact</a></li>
                <li><a href="Home.aspx">Logout</a></li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Section: intro -->
<section id="intro" class="intro">

    <div class="slogan">
       
    </div>
    <br />
    <br />
     <br />
    <br />
     <br />
     <br />
    <br />
    <br />
</section>
<!-- /Section: intro -->

        <section id="services" class="home-section  bg-gray">

            <h2 style="text-align:center"> Household Category </h2>
            <table class="auto-style5" align=center>
                <tr>
                    <td style="text-align:center" >
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Furnitures" Font-Size="Medium" ></asp:Label>
                    </td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Strikeout="False" ForeColor="Black" Text="Home Electronics" Font-Size="Medium"></asp:Label>
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="Appliences" Font-Size="Medium"></asp:Label>
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Outdoor Equipments" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Furnitures" runat="server" Height="200px" ImageUrl="~/img/category/household/furniture_desktop1x.png" Width="200px" OnClick="Furnitures_Click" />
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Home_Electronics" runat="server" Height="200px" ImageUrl="~/img/category/household/home-electronics_desktop1x.png" Width="206px" OnClick="Home_Electronics_Click" />
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Appliences" runat="server" Height="200px" ImageUrl="~/img/category/household/appliances_desktop1x.png" Width="217px" OnClick="Appliences_Click" />
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Outdoor_Equipments" runat="server" Height="200px" ImageUrl="~/img/category/household/outdoor-equipment_desktop1x.png" Width="217px" OnClick="Outdoor_Equipments_Click" />
                    </td>
                </tr>
                <tr>
                   
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                   
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    
                </tr>


                
                <tr>
                   
                   <td style="text-align:center" class="auto-style1">
                        </td>
                   <td style="text-align:center" class="auto-style1">
                        </td>
                   <td style="text-align:center" class="auto-style1">
                        </td>
                   <td style="text-align:center" class="auto-style1">
                        </td>
                   <td style="text-align:center" class="auto-style1">
                        </td>
                   <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                   
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    <td style="text-align:center" class="auto-style1">
                        </td>
                    
                </tr>


                
                <tr>
                   
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                   
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    
                </tr>


                
                <tr>
                    <td style="text-align:center" >
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Sporting Equipments" Font-Size="Medium" ></asp:Label>
                    </td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Strikeout="False" ForeColor="Black" Text="Antiques" Font-Size="Medium"></asp:Label>
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="Art &amp; Antiques" Font-Size="Medium"></asp:Label>
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Pianos" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Sporting_Equipments" runat="server" Height="200px" ImageUrl="~/img/category/household/sporting-equipment_desktop1x.png" Width="239px" OnClick="Sporting_Equipments_Click" />
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Antiques" runat="server" Height="200px" ImageUrl="~/img/category/household/antiques_desktop1x.png" Width="204px" OnClick="Antiques_Click" />
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Art_Antiques" runat="server" Height="200px" ImageUrl="~/img/category/household/art-glass_desktop1x.png" Width="212px" OnClick="Art_Antiques_Click" />
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Pianos" runat="server" Height="200px" ImageUrl="~/img/category/household/pianos_desktop1x.png" Width="209px" OnClick="Pianos_Click" />
                    </td>
                </tr>
                <tr>
                   
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                   
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    
                </tr>



                <tr>
                   
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                   
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    
                </tr>


                
                <tr>
                   
                  
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                   <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                   
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    
                </tr>


                
                <tr>
                    <td style="text-align:center" >
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Text="Pool Table" Font-Size="Medium" ></asp:Label>
                    </td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center" >
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="Pooltable" runat="server" Height="153px" ImageUrl="~/img/category/household/pool-tables_desktop1x.png" Width="225px" OnClick="Pooltable_Click" />
                    </td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    <td style="text-align:center">
                        &nbsp;</td>
                    
                </tr>
            </table>
            <br />

              <a href="Category.aspx"><asp:HyperLink ID="hl_forgetpassword" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/Category.aspx">Change Category</asp:HyperLink></a>
            
            
            



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

