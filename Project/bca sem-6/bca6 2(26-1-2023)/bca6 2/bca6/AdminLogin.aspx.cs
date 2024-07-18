using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bca6
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from AdminLoginTBL where usr='" + txtusr.Text + "' and psw='" + txtpass.Text + "'", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["admin"] = txtusr.Text;
                    Session["aid"] = dt.Rows[0][0].ToString();
                    Response.Write("<script>alert('Welcome')</script>");
                    Response.Redirect("admin/AdminHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Credentials')</script>");
                }

            }
            catch (Exception exc)
            {
                Response.Write("<script>alert('" + exc.ToString() + "')</script>");
            }
        }
    }
}