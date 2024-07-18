using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace bca6
{
    public partial class user_registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                string gen = null;
                if (rdomale.Checked)
                {
                    gen = rdomale.Text;
                }
                else if (rdofemale.Checked)
                {
                    gen = rdofemale.Text;
                }
                else
                {
                    gen = rdoother.Text;
                }
                conn.Open();
                SqlCommand cmd = new SqlCommand("AddUser_SP", conn);
                cmd.CommandType = CommandType.StoredProcedure;

//                cmd.Parameters.Add("fnm",txtfnm.Text);
//                cmd.Parameters.Add("lnm", txtlnm.Text);
//                cmd.Parameters.Add("state", ddlstate.SelectedItem.ToString());
//                cmd.Parameters.Add("city", ddlcity.SelectedItem.ToString());
//                cmd.Parameters.Add("gen", gen);
//                cmd.Parameters.Add("dob", txtdob.Text);
//                cmd.Parameters.Add("pin", txtpin.Text);
//                cmd.Parameters.Add("cont", txtcont.Text);
//                cmd.Parameters.Add("email", txtemail.Text);
//                cmd.Parameters.Add("psw", txtpsw.Text);
//                cmd.Parameters.Add("act", "ins");



                cmd.Parameters.AddWithValue("fnm", txtfnm.Text);
                cmd.Parameters.AddWithValue("lnm", txtlnm.Text);
                cmd.Parameters.AddWithValue("state", ddlstate.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("city", ddlcity.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("gen", gen);
                cmd.Parameters.AddWithValue("dob", txtdob.Text);
                cmd.Parameters.AddWithValue("pin", txtpin.Text);
                cmd.Parameters.AddWithValue("cont", txtcont.Text);
                cmd.Parameters.AddWithValue("email", txtemail.Text);
                cmd.Parameters.AddWithValue("psw", txtpsw.Text);
                cmd.Parameters.AddWithValue("act", "ins");
                
                
                
                
                cmd.ExecuteReader();
                
//                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Data Registered Successfully...')</script>");
            }
            catch (Exception exc)
            {
                Response.Write("<script>alert('"+exc.ToString()+"')</script>");
            }
        }

        protected void txtfnm_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtcont_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlcity.Items.Clear();
            if (ddlstate.SelectedItem.ToString()=="gujarat")
            {
                ddlcity.Items.Add("rajkot");
                ddlcity.Items.Add("porbandar");
                ddlcity.Items.Add("junagadh");
                ddlcity.Items.Add("jamnagar");
            }
            else if (ddlstate.SelectedItem.ToString() == "punjab")
            {
                ddlcity.Items.Add("haryana");
                ddlcity.Items.Add("chandigadh");
            }
            else if (ddlstate.SelectedItem.ToString() == "maharastra")
            {
                ddlcity.Items.Add("mumbai");
                ddlcity.Items.Add("puna");
            }
        }
    }
}