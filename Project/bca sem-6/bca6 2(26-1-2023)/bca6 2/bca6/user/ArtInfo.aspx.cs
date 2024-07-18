using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace bca6.user
{
    public partial class ArtInfo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string q="select * from ArtsTBL";
            if (Request.QueryString["type"]=="dot")
            {
                q="select * from ArtsTBL where artType='Dot Bookmark Mandala'";
            }
            else if (Request.QueryString["type"] == "complex")
            {
                q = "select * from ArtsTBL where artType='Complex Ornamental Mandala'";
            }
            else if (Request.QueryString["type"] == "gelly")
            {
                q = "select * from ArtsTBL where artType='Gelly Roll Mandala'";
            }
            else if (Request.QueryString["type"] == "3d")
            {
                q = "select * from ArtsTBL where artType='3D Mandala'";
            }
            else if (Request.QueryString["type"] == "freestyle")
            {
                q = "select * from ArtsTBL where artType='Free Style Mandala'";
            }
            else  {
                q = "select * from ArtsTBL ";
            }
            SqlDataAdapter da = new SqlDataAdapter(q, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

    }
}