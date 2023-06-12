<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transporter_home.aspx.cs" Inherits="Transporter_home" %>

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
    <link href="css/Transporterlogin.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style2 {
            height: 92px;
        }
        .auto-style4 {
            height: 92px;
            width: 263px;
        }
        .auto-style6 {
            width: 263px;
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
               
               <li><a href="Transporter_home.aspx">Outlook</a></li>
                        <li><a href="Transporter_auction.aspx">Play Auction</a></li>
                        <li><a href="Transporter_home.aspx">Conformation</a></li>
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
 <asp:Label ID="Label6" runat="server"></asp:Label>
            <h2 style="text-align:center"> View Consignment </h2>
                   
                <table align="center" style="width:397px" >
                

                
                   
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
                           </tr>
                 </table>  
                          

                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="Page_Load" DataKeyNames="Desc_ID">
                                  <AlternatingRowStyle BackColor="White" />
                                  <Columns>
                                      <asp:BoundField DataField="Desc_ID" HeaderText="Desc_ID" SortExpression="Desc_ID" InsertVisible="False" ReadOnly="True" />
                                      <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                      <asp:BoundField DataField="Sub_Category" HeaderText="Sub_Category" SortExpression="Sub_Category" />
                                      <asp:TemplateField HeaderText="Image" SortExpression="Image">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Image ID="Image1" runat="server" Height="192px" ImageUrl='<%# Eval("Image") %>' Width="206px" />
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                      <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                                      <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
                                      <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                                      <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                      <asp:BoundField DataField="Source_Address" HeaderText="Source_Address" SortExpression="Source_Address" />
                                      <asp:BoundField DataField="Destination_Address" HeaderText="Destination_Address" SortExpression="Destination_Address" />
                                      <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                      <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
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
                               
                               

                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Desc_ID], [Category], [Sub_Category], [Image], [Quantity], [Height], [Width], [Weight], [Description], [Source_Address], [Destination_Address], [Date], [Time], [Bid], [transportername] FROM [Description] WHERE (([Category] = @Category) AND ([Sub_Category] = @Sub_Category))">
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="dd_cat" Name="Category" PropertyName="SelectedValue" Type="String" />
                                      <asp:ControlParameter ControlID="dd_scat" Name="Sub_Category" PropertyName="SelectedValue" Type="String" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
            


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
