<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_MsgT2.aspx.cs" Inherits="Admin_MsgT2" %>

<!DOCTYPE html>

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
    <link href="css/admin.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style2 {
            height: 60px;
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
               
               
         <li><a href="Admin_home.aspx">Scheduler</a></li>
                        <li><a href="Admin_MsgT.aspx">Notify Transporter</a></li>
                        <li><a href="Admin_MsgC.aspx">Message Customer</a></li>
                 <li><a href="Admin_MsgT2.aspx">Message Transporter</a></li>
                        <%--<li><a href="Admin_Challan.aspx">Challan</a></li>--%>
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
</section>
    
              <section id="services" class="home-section  bg-gray">
                  <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel ID="Panel1" runat="server">
                      <ContentTemplate>

          <h2 style="text-align:center"> Auction Message for Transporter </h2>
                  
                  <table align="center">
                      
                      <tr>
                          <td>
                               <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text="Auction Detail"></asp:Label>
                          </td>
                    <td >
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" DataKeyNames="Desc_ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="transportername" HeaderText="Username" SortExpression="transportername" />
                                <asp:BoundField DataField="Sub_Category" HeaderText="Sub_Category" SortExpression="Sub_Category" />
                                <asp:BoundField DataField="Bid" HeaderText="Bid" SortExpression="Bid" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                             
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Category], [Sub_Category], [Bid], [transportername], [Desc_ID] FROM [Description]"></asp:SqlDataSource>
                             
                    </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label2" runat="server" Text="Transporter" Font-Bold="True" ForeColor="Black"></asp:Label>
                          </td>
                          <td>
                              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                  <AlternatingRowStyle BackColor="White" />
                                  <Columns>
                                      <asp:CommandField ShowSelectButton="True" />
                                      <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                      <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" SortExpression="Company_Name" />
                                      <asp:BoundField DataField="Company_Contact_No" HeaderText="Company_Contact_No" SortExpression="Company_Contact_No" />
                                  </Columns>
                                  <FooterStyle BackColor="#CCCC99" />
                                  <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                  <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                  <RowStyle BackColor="#F7F7DE" />
                                  <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                  <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                  <SortedAscendingHeaderStyle BackColor="#848384" />
                                  <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                  <SortedDescendingHeaderStyle BackColor="#575357" />
                              </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Company_Name], [Company_Contact_No], [Username] FROM [Transporter_Reg]"></asp:SqlDataSource>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style2">

                              <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="Company Name"></asp:Label>

                          </td>
                          <td class="auto-style2">

                              <asp:TextBox ID="txt_Coname" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>

                          </td>
                      </tr>
                      <tr>
                          <td>

                              <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Contact No"></asp:Label>

                          </td>
                          <td>

                              <asp:TextBox ID="txt_Cno" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>

                          </td>
                      </tr>
                      
                      <tr>
                          <td>

                              <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="Sub Category"></asp:Label>

                          </td>
                          <td>

                              <asp:TextBox ID="txt_Scat" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>

                          </td>
                      </tr>
                      
                      <tr>
                          <td>

                              <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Bid"></asp:Label>

                          </td>
                          <td>

                              <asp:TextBox ID="Txt_Bid" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>

                          </td>
                      </tr>

                      </table>
                          
                      </ContentTemplate>
                  </asp:UpdatePanel>
                   <table align="center">

                      <tr>    
                      <td>
                              
                          <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Black" Text="Send" OnClick="Button1_Click" />
                              
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
