<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_home.aspx.cs" Inherits="Admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    

<script type = "text/javascript" >

   function preventBack(){window.history.forward();}

    setTimeout("preventBack()", 0);

    window.onunload=function(){null};

</script>

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
                         <li> <asp:LinkButton ID="btnLogout" Text="Logout" OnClick="abc" runat="server" onclientclick='redirect()'/></li>

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

            <h2 style="text-align: center"> 
                <asp:Label ID="Label1" runat="server">SCHEDULAR</asp:Label>
            </h2>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Desc_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Desc_ID" HeaderText="Desc_ID" InsertVisible="False" ReadOnly="True" SortExpression="Desc_ID" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Sub_Category" HeaderText="Sub_Category" SortExpression="Sub_Category" />
                    <asp:TemplateField HeaderText="Image" SortExpression="Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="113px" ImageUrl='<%# Eval("Image") %>' Width="128px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="Bid" HeaderText="Bid" SortExpression="Bid" />
                    <asp:BoundField DataField="transportername" HeaderText="transportername" SortExpression="transportername" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Desc_ID], [Category], [Sub_Category], [Image], [username], [Bid], [transportername] FROM [Description]"></asp:SqlDataSource>
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
