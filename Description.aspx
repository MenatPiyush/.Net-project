<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Description.aspx.cs" Inherits="Description" %>



<script runat="server">

  

   
</script>

<html>
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
            width: 494px;
        }
        .auto-style2 {
            height: 29px;
            width: 494px;
        }
        .auto-style3 {
            height: 38px;
            width: 494px;
        }
        .auto-style4 {
            height: 35px;
            width: 494px;
        }
        .auto-style6 {
            height: 35px;
            width: 204px;
        }
        .auto-style7 {
            height: 29px;
            width: 204px;
        }
        .auto-style8 {
            height: 20px;
            width: 204px;
        }
        .auto-style9 {
            height: 38px;
            width: 204px;
        }
        .auto-style10 {
            width: 204px
        }
        .auto-style11 {
            width: 494px;
        }
    </style>
      
</head>
<<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
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
            <a class="navbar-brand" href="Transporter_reg.aspx">
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
    <br />
    <br />
    <br />
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

            <h2 style="text-align:center"> CREATE consignment 
               </h2> 
     
      <table align="center" style="width:initial">
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Category"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_catname" runat="server" ReadOnly="True" ForeColor="Black" ValidationGroup="Master"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Subcategory "></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_subcatname" runat="server" ValidationGroup="Master" ReadOnly="True" ForeColor="Black"></asp:TextBox>
              </td>
          </tr>
          
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Image"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:FileUpload ID="fu_image" runat="server" ForeColor="Black" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fu_image" ErrorMessage="Upload image" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>

                  <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="Black" Text="Quantity"></asp:Label>

              </td>
              <td>

                  <asp:TextBox ID="txt_Quantity" runat="server" ForeColor="Black" ValidationGroup="Master"></asp:TextBox>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_Quantity" ErrorMessage="Enter Quantity" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Height"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_height" runat="server" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_height" ErrorMessage="Enter Approx Height" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style6">
                  <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="Width"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:TextBox ID="txt_width" runat="server" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_width" ErrorMessage="Enter Approx Width" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style7">
                  <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Black" Text="Weight"></asp:Label>
              </td>
              <td class="auto-style2">
                  <asp:TextBox ID="txt_weight" runat="server" ValidationGroup="Master" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_weight" ErrorMessage="Enter Approx Weight" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Text="Description"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_desc" runat="server" ValidationGroup="Master" TextMode="MultiLine" Height="87px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_desc" ErrorMessage="Enter Description of Item" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style8">
                  <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Black" Text="Source Address"></asp:Label>
              </td>
              <td class="auto-style1">
                  <asp:TextBox ID="txt_srcadd" runat="server" Height="85px" TextMode="MultiLine" ForeColor="Black" ValidationGroup="Master"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_srcadd" ErrorMessage="Enter Address for Pickup" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style9">
                  <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="False"  ForeColor="Black" Text="Destination Address"></asp:Label>
              </td>
              <td class="auto-style3">
&nbsp;&nbsp;
                  <asp:TextBox ID="txt_destadd" runat="server" Height="72px" TextMode="MultiLine" ForeColor="Black" ValidationGroup="Master"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_destadd" ErrorMessage="Enter Deliver Address" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style9">
                  <asp:Label ID="Label17" runat="server" Text="Pick Up Date" Font-Bold="True" ForeColor="Black"></asp:Label>
              </td>
              <td class="auto-style3">
                  <asp:TextBox ID="txt_date" runat="server" ForeColor="Black" TextMode="Date" ValidationGroup="Master" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_date" ErrorMessage="Select Pickup Date" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>

                  <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="Black" Text="Pick Up Time"></asp:Label>

              </td>
              <td>

                  <asp:TextBox ID="txt_time" runat="server" ForeColor="Black" TextMode="Time" ValidationGroup="Master"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_time" ErrorMessage="Select Pickup Time" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>

              </td>
          </tr>
          <tr>
              <td>
                  <asp:Label ID="Label3" runat="server" Text="Label" visible="false"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="auto-style9">&nbsp;</td>
              <td class="auto-style3">
                  <asp:Button ID="btn_next" runat="server" Font-Bold="True" ForeColor="Black" Text="Submit" ValidationGroup="Master" OnClick="btn_next_Click" />
                  <asp:Button ID="btn_reset" runat="server" Font-Bold="True" ForeColor="Black" Text="Reset" OnClick="btn_reset_Click" />
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
