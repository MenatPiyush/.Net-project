using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;

public partial class Admin_AuctionDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView2.SelectedRow;
        txt_Cat.Text = gr.Cells[2].Text;
        txt_Scat.Text = gr.Cells[3].Text;
        txt_Bid.Text = gr.Cells[4].Text;
        txt_trans.Text = gr.Cells[5].Text;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr1 = GridView1.SelectedRow;
        txt_cname.Text = gr1.Cells[2].Text;
        txt_ccno.Text = gr1.Cells[3].Text;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string destinationaddr = "91" + txt_ccno.Text;
        string message = "Hi " + txt_cname.Text +  " your "  + txt_Scat.Text +  " have been  bid  at lowest price at "  + txt_Bid.Text + "  by " + txt_trans.Text + " If you wish to Cancel Consignment. Please Login. Thank You";

        String message1 = HttpUtility.UrlEncode(message);
        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "EkOyCjONgE4-I1orJf8uKwaUW0OHKdZ4Oi7mheEOes"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);

            Response.Redirect("~/Admin_MsgC.aspx");
        }
    }
}