using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bca6.admin
{
    public partial class DisplayArts : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!=null)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("delete from ArtsTBL where aId="+Request.QueryString["id"],conn);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter("select * from ArtsTBL", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}