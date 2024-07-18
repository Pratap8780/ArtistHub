using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bca6.user
{
    public partial class MyOrders : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("delete from SellTbl where sid="+Request.QueryString["id"],conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM sellTbl JOIN ArtsTBL ON sellTbl.aId = ArtsTBL.aId JOIN UserTBL ON UserTBL.id = SellTbl.uid where sellTbl.uid="+Session["uid"], conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception exc)
            {
                Response.Redirect("<script>alert('" + exc.ToString() + "')</script>");
            }
        }
    }
}