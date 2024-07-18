using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace bca6.user
{
    public partial class DisplayArt : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                SqlDataAdapter da = new SqlDataAdapter("select * from ArtsTBL where aId=" + id, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Image1.ImageUrl = dt.Rows[0]["img1"].ToString();
                    Image2.ImageUrl = dt.Rows[0]["img2"].ToString();
                    Image3.ImageUrl = dt.Rows[0]["img3"].ToString();
                    lbltit.Text = dt.Rows[0]["atitle"].ToString();
                    lblatype.Text = dt.Rows[0]["artType"].ToString();
                    lblqty.Text ="<b>Stock:</b>"+dt.Rows[0]["qty"].ToString()+" units";
                    lblprice.Text = "<b>Price:</b> ₹" + dt.Rows[0]["price"].ToString();
                    lbldescription.Text = "<b>Desciption:</b> " + dt.Rows[0]["descr"].ToString();
                }
            }
            catch (Exception exc)
            {

                throw;
            }
        }

        protected void btnbuynow_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("BuyNow.aspx?id="+Request.QueryString["id"]);
        }
    }
}