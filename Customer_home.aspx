<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_home.aspx.cs" Inherits="Customer_home" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type = "text/javascript" >

        function preventBack() { window.history.forward(); }

        setTimeout("preventBack()", 0);

        window.onunload = function () { null };

</script>
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
    <link href="css/Customerlogin.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            height: 92px;
        }

        .auto-style4 {
            height: 92px;
            width: 183px;
        }

        .auto-style5 {
            width: 183px;
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




                        <li>

                            <asp:LinkButton ID="btnLogout" Text="Logout" OnClick="abc" runat="server" onclientclick='redirect()'/>

                        </li>
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
            <asp:ScriptManager ID="Script1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="Panel1" runat="server">
                <ContentTemplate>

                    <h2 style="text-align: center">Home Page 
                    </h2>

                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <p style="text-align: center">

                        <table align="center">

                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Desc_ID" Width="881px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="Desc_ID" HeaderText="Desc ID" InsertVisible="False" ReadOnly="True" SortExpression="Desc_ID" />
                                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                            <asp:BoundField DataField="Sub_Category" HeaderText="Sub Category" SortExpression="Sub_Category" />
                                            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Image ID="Image1" runat="server" Height="191px" ImageUrl='<%# Eval("Image") %>' Width="181px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                            <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                                            <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
                                            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                            <asp:BoundField DataField="Source_Address" HeaderText="Source Address" SortExpression="Source_Address" />
                                            <asp:BoundField DataField="Destination_Address" HeaderText="Destination Address" SortExpression="Destination_Address" />
                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                            <asp:BoundField DataField="Bid" HeaderText="Bid" SortExpression="Bid" />
                                            <asp:BoundField DataField="transportername" HeaderText="Transporter Name" SortExpression="transportername" />
                                            <asp:BoundField DataField="trancno" HeaderText="Contact No" SortExpression="trancno" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Desc_ID], [Category], [Sub_Category], [Image], [Quantity], [Height], [Width], [Weight], [Description], [Source_Address], [Destination_Address], [Date], [Time], [username], [Bid], [transportername], [trancno] FROM [Description] WHERE ([username] = @username)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>


                                </td>
                            </tr>
                        </table>

                        <table align="center" style="width: 397px">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Upload Shipment" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:Button ID="txt_upload" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Black" OnClick="txt_upload_Click" Text="Upload" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Select Shipment" Font-Size="Medium"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_ss" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:TextBox ID="txt_tcn" runat="server" Visible="False"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                </ContentTemplate>
            </asp:UpdatePanel>

            <table align="center" style="width: 397px">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Text="Delete Shipment"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btn_del" runat="server" Font-Size="Small" ForeColor="Black" Text="Delete" OnClick="btn_del_Click" /></td>
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
                    </div>
                    <p>&copy;Copyright 2017 - Shipping Tech. All rights reserved.</p>
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
