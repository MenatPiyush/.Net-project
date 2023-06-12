<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transporter_Reg.aspx.cs" Inherits="Transporter_Reg" %>

<!DOCTYPE html>

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
    <link href="css/regstyle.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />
      
    <style type="text/css">
        .auto-style1 {
            height: 20px;
            width: 740px;
        }
        .auto-style2 {
            height: 29px;
            width: 740px;
            text-align: left;
        }
        .auto-style3 {
            height: 38px;
            width: 740px;
        }
        .auto-style4 {
            height: 35px;
            width: 740px;
            text-align: left;
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
            width: 740px;
            text-align: left;
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
      <asp:ScriptManager ID="Script1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="Panel1" runat="server">
                <ContentTemplate>
 <h2 style="text-align:center"> Transporter Registration</h2>
      <table align="center" style="width:initial">
          <tr>
              <td>
                  <asp:TextBox ID="txt_RoleID" runat="server" Enabled="False" ReadOnly="True" ValidationGroup="Master" Visible="False" Width="20px"></asp:TextBox>
              </td>
          </tr>
         
           <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="Company Logo"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:FileUpload ID="fu_logo" runat="server" ForeColor="Black" ToolTip="Upload Logo" Width="244px" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="fu_logo" ErrorMessage="Upload Company Logo" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
           <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Company Name"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_companyname" runat="server" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_companyname" ErrorMessage="Enter Company Name" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="State"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:DropDownList ID="dd_state" runat="server" ValidationGroup="Master" DataSourceID="SqlDataSource1" DataTextField="State_Name" DataValueField="State_ID" AutoPostBack="True" Width="175px" ForeColor="Black">
                      <asp:ListItem>Choose One</asp:ListItem>
                      <asp:ListItem>guj</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dd_state" ErrorMessage="Select State" Font-Bold="True" ForeColor="Red" ValidationGroup="Master" InitialValue="Choose one"></asp:RequiredFieldValidator>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" SelectCommand="SELECT [State_ID], [State_Name] FROM [State] ORDER BY [State_Name]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="City"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:DropDownList ID="dd_city" runat="server" ValidationGroup="Master" DataSourceID="SqlDataSource2" DataTextField="City_Name" DataValueField="City_ID" Width="175px" ForeColor="Black">
                      <asp:ListItem>Choose One</asp:ListItem>
                      <asp:ListItem>amd</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dd_city" ErrorMessage="Select City" Font-Bold="True" ForeColor="Red" ValidationGroup="Master" InitialValue="Choose One"></asp:RequiredFieldValidator>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" FilterExpression="State_ID = {0}" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" SelectCommand="SELECT [State_ID], [City_ID], [City_Name] FROM [City] ORDER BY [City_Name]" ProviderName="System.Data.SqlClient">
                      <FilterParameters>
                                <asp:ControlParameter ControlID="dd_state" Name="State_ID" PropertyName="SelectedValue" />
                            </FilterParameters>
                  </asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Company Address"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_companyadd" runat="server" TextMode="MultiLine" ValidationGroup="Master" Height="100px" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_companyadd" ErrorMessage="Enter Company Full Address" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style6">
                  <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Pincode"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:TextBox ID="txt_pincode" runat="server" Width="175px" ForeColor="Black" ValidationGroup="Master"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_pincode" ErrorMessage="Enter Pincode" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_pincode" ErrorMessage="Invalid Pincode" Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{6}" ValidationGroup="Master"></asp:RegularExpressionValidator>
              </td>
          </tr>
           <tr>
              <td class="auto-style6">
                  <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Black" Text="Upload Document"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:FileUpload ID="fu_doc1" runat="server" ForeColor="Black" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="fu_doc1" ErrorMessage="Upload Document" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                </td>
              </tr>
           <tr>
              <td class="auto-style6">
                  <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="Black" Text="Upload Document"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:FileUpload ID="fu_doc2" runat="server" ForeColor="Black" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="fu_doc2" ErrorMessage="Upload Document" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                </td>
              </tr>
           <tr>
              <td class="auto-style6">
                  <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Black" Text="Upload Document"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:FileUpload ID="fu_doc3" runat="server" ForeColor="Black" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="fu_doc3" ErrorMessage="Upload Document" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                </td>
              </tr>
          <tr>
              <td class="auto-style6">
                  <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="Company Contact No."></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:TextBox ID="txt_companycontactno" runat="server" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_companycontactno" ErrorMessage="Enter Company Contact Number" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_companycontactno" ErrorMessage="Invalid Contact Number" Font-Bold="True" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="Master"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style7">
                  <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Black" Text="Manager Name"></asp:Label>
              </td>
              <td class="auto-style2">
                  <asp:TextBox ID="txt_managername" runat="server" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_managername" ErrorMessage="Enter Manager Name " Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Manager Contact No."></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_managercontactno" runat="server" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_managercontactno" ErrorMessage="Enter Manager Contact Number" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_managercontactno" ErrorMessage="Invalid Contact number" Font-Bold="True" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="Master"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Text="Email ID"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_email" runat="server" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter Email Address" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_email" ErrorMessage="Invalid Email Address" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Master"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Black" Text="Password"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_password" runat="server" TextMode="Password" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_password" ErrorMessage="Enter Password" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Black" Text="Confirm Password"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_confirmpassword" runat="server" TextMode="Password" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txt_confirmpassword" ErrorMessage="Re-Enter Password" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confirmpassword" ErrorMessage="Both Password Must Be Same" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:CompareValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Black" Text="Question"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:DropDownList ID="dd_question" runat="server" ValidationGroup="Master" ForeColor="Black">
                      <asp:ListItem>Choose One</asp:ListItem>
                      <asp:ListItem>What is your childhood name?</asp:ListItem>
                      <asp:ListItem>What is your vehicle number?</asp:ListItem>
                      <asp:ListItem>Which school you have studied?</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="dd_question" ErrorMessage="Select Question" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style10">
                  <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Black" Text="Answer"></asp:Label>
              </td>
              <td class="auto-style11">
                  <asp:TextBox ID="txt_answer" runat="server" ValidationGroup="Master" Width="175px" ForeColor="Black"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txt_answer" ErrorMessage="Select Answer" Font-Bold="True" ForeColor="Red" ValidationGroup="Master"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style8"></td>
              <td class="auto-style1">
                  
              </td>
          </tr>
          <tr>
              <td class="auto-style9"></td>
              <td class="auto-style3">
                  </td>
              </tr>
          </table>
</ContentTemplate>
                </asp:UpdatePanel>
                     <table align="center" style="width:initial">
                         <tr>
                             <td></td>
                             <td>
                  <asp:Button ID="btn_submit" runat="server" Font-Bold="True" ForeColor="Black" Text="Submit" ValidationGroup="Master" OnClick="btn_submit_Click" Width="72px" />
&nbsp;&nbsp;
                  <input id="Reset1" style="color: #000000; font-weight: bold;" type="reset" value="Reset" width="72" /></td>
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
