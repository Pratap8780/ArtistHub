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
    public partial class chengepassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchangepassword_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from UserTBL where email='" + Session["usrEmail"] + "' and pwd='"+txtoldpwd.Text+"'", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("update UserTBL set pwd='"+txtnewpwd.Text+"' where email='"+Session["usrEmail"]+"'",conn);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Passsword has been changed...')</script>");
                    conn.Close();
                    Response.Redirect("../user login.aspx");
                }
                else
                {
                    Response.Redirect("<script>alert('Incorrect Pasword')</script>");
                }
            }
            catch (Exception exc)
            {
                Response.Write("<script>alert('" + exc.ToString() + "')</script>");
            }
        }
    }
}