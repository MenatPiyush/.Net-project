<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transporter_auction.aspx.cs" Inherits="Transporter_auction" %>

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
    <link href="css/Transporterlogin.css" rel="stylesheet" />
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

                        <li><a href="Transporter_home.aspx">Outlook</a></li>
                        <li><a href="Transporter_auction.aspx">Play Auction</a></li>
                        <li><a href="Transporter_home.aspx">Conformation</a></li>
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
            <h2 style="text-align: center">Play Auction </h2>
        


            <table align="center" style="width:397px" >
                

                 <asp:Label ID="Label6" runat="server"></asp:Label>
                   <tr>
                       <td>
                     
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="timer1_tick"></asp:Timer>
        <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Literal ID="litmsg" runat="server"></asp:Literal>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="timer1" EventName="tick" />
            </Triggers>
        </asp:UpdatePanel>
                       </td>
                   </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Select Category" Font-Size="Medium"></asp:Label>
                          </td>
                          <td class="auto-style2">
                              <asp:DropDownList ID="dd_cat" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="Category" Font-Bold="True" ForeColor="Black">
                                  <asp:ListItem Value="0">Select</asp:ListItem>
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Category] FROM [Description]"></asp:SqlDataSource>
                          </td>
                      </tr>
                   <tr>
                       <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Select Sub-Category" Font-Size="Medium"></asp:Label>
                          </td>
                       <td>
                           <asp:DropDownList ID="dd_scat" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Sub_Category" DataValueField="Sub_Category" Font-Bold="True" ForeColor="Black">
                               <asp:ListItem Value="0">Select</asp:ListItem>
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Sub_Category] FROM [Description] WHERE ([Category] = @Category)">
                               <SelectParameters>
                                   <asp:ControlParameter ControlID="dd_cat" Name="Category" PropertyName="SelectedValue" Type="String" />
                               </SelectParameters>
                           </asp:SqlDataSource>
                       </td>
                   </tr>
                      <tr>
                          <td class="auto-style6">
                              &nbsp;</td>
                          <td>
                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Desc_ID">
                                  <AlternatingRowStyle BackColor="White" />
                                  <Columns>
                                      <asp:CommandField ShowSelectButton="True" />
                                      <asp:BoundField DataField="Desc_ID" HeaderText="Desc ID" SortExpression="Desc_ID" InsertVisible="False" ReadOnly="True" />
                                      <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                      <asp:BoundField DataField="Sub_Category" HeaderText="Sub Category" SortExpression="Sub_Category" />
                                      <asp:TemplateField HeaderText="Image" SortExpression="Image">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Image ID="Image1" runat="server" Height="156px" ImageUrl='<%# Eval("Image") %>' Width="160px" />
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="Bid" HeaderText="Bid" SortExpression="Bid" />
                                      <asp:BoundField DataField="transportername" HeaderText="Transporter Name" SortExpression="transportername" />
                                      <asp:BoundField DataField="trancno" HeaderText="trancno" SortExpression="trancno" />
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
                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Desc_ID], [Category], [Sub_Category], [Image], [Bid], [transportername], [trancno] FROM [Description] WHERE (([Category] = @Category) AND ([Sub_Category] = @Sub_Category))">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="dd_cat" Name="Category" PropertyName="SelectedValue" Type="String" />
                                      <asp:ControlParameter ControlID="dd_scat" Name="Sub_Category" PropertyName="SelectedValue" Type="String" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                              <br />
                              </td>
                          </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="12pt" Text="Selected Consignment" ForeColor="Black"></asp:Label>
                        </td>
                        <td>

                            <asp:TextBox ID="txt_Desc" runat="server" Height="30px" ValidationGroup="Master" Width="146px" ForeColor="Black"></asp:TextBox>

                        </td>
                    </tr>

                    
                    <tr>
                        <td>
                              <asp:Label ID="Lbl_bid" runat="server" Font-Bold="True" Font-Size="12pt" Text="Enter Bid" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>

                              <asp:TextBox ID="txt_bid" runat="server" Height="28px" ValidationGroup="Master" Width="141px" Font-Bold="True" ForeColor="Black"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_bid" ErrorMessage="Please Enter Bid" ForeColor="Red"></asp:RequiredFieldValidator>
                              <br />
                              <br />
                            </td>
                        </tr>
                 <tr>
                        <td>

                            <asp:Label ID="Lbl_bid0" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Black" Text="Enter Contact No"></asp:Label>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_tcn" runat="server" ForeColor="Black" EnableViewState="False" Visible="True"  Height="27px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_tcn" ErrorMessage="Please Enter Contact No" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_tname" runat="server" ForeColor="Black" ReadOnly="True" Enabled="False" EnableViewState="False" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                 
                    
            <table>
            <tr>
                        <td>
                            </td>
                <td></td>
                        <td>
                              <asp:Button ID="btn_add" runat="server" Font-Bold="True" Font-Size="11pt" OnClick="btn_add_Click" Text="Add" ForeColor="Black" />
                              <br />
                              <br />
                               </td> </tr>
                     
           
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
                        <p>&copy;Copyright 2017 - Shipping Tech. All rights reserved.              </div>
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
