using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace bca6.user
{
    public partial class BuyNow : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.QueryString["id"].ToString());//aid
                //int uid=int.Parse(Session["uid"].ToString());//uid
                SqlDataAdapter da = new SqlDataAdapter("select * from ArtsTBL where aId=" + id, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Image1.ImageUrl = dt.Rows[0]["img1"].ToString();
                    Lbltit.Text = dt.Rows[0]["atitle"].ToString();
                    Lblprice.Text = dt.Rows[0]["price"].ToString();

                    SqlDataAdapter d = new SqlDataAdapter("select * from UserTBL where email='" + Session["usrEmail"] + "'", conn);
                    DataTable t = new DataTable();
                    d.Fill(t);
                    txtcity.Text = t.Rows[0][5].ToString();
                    txtpin.Text = t.Rows[0][7].ToString();
                    txtcont.Text = t.Rows[0][8].ToString();
                    txtemail.Text = t.Rows[0][9].ToString();
                    int price = int.Parse(Lblprice.Text);
                    int qty = int.Parse(txtqty.Text);
                    lbltprice.Text = (price * qty).ToString();
                }
            }
            catch (Exception exc)
            {
                Response.Write("<script>alert('" + exc.ToString() + "')</script>");
            }

        }

        protected void txtqty_TextChanged(object sender, EventArgs e)
        {
            int price = int.Parse(Lblprice.Text);
            int qty = int.Parse(txtqty.Text);
            lbltprice.Text = (price * qty).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sell_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                int id = int.Parse(Request.QueryString["id"].ToString());
                int uid = int.Parse(Session["uid"].ToString());
                cmd.Parameters.Add("aid", id);
                cmd.Parameters.Add("uid", uid);
                cmd.Parameters.AddWithValue("qty", int.Parse(txtqty.Text));
                cmd.Parameters.AddWithValue("total",int.Parse( lbltprice.Text));
                cmd.Parameters.Add("odate", DateTime.Now.ToString("dd-MM-yyyy"));
                cmd.ExecuteNonQuery();
                conn.Close();
                //Response.Write("<script>alert('oder Successfully...')</script>");
                Response.Redirect("MyOrders.aspx");
            }
            catch (Exception exc)
            {
                Response.Write("<script>alert('" + exc.ToString() + "')</script>");
            }


        }
    }
}