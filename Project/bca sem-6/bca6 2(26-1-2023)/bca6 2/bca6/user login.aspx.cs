using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace bca6
{
    public partial class user_login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("user registration.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from UserTBL where email='"+txtusr.Text+"' and pwd='"+txtpass.Text+"'",conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["usrEmail"] = txtusr.Text;
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Response.Write("<script>alert('Welcome')</script>");
                    Response.Redirect("user/UserHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect User')</script>");
                }

            }
            catch (Exception exc)
            {
                     Response.Write("<script>alert('"+exc.ToString()+"')</script>");
            }
        }

    }
}