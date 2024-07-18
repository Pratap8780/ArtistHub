using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
namespace bca6.admin
{
    public partial class AddArt : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

            protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile && (Path.GetExtension(FileUpload1.FileName) == ".jpg" || Path.GetExtension(FileUpload1.FileName) == ".jpeg" || Path.GetExtension(FileUpload1.FileName) == ".png"))
                {
                    FileUpload1.SaveAs(Server.MapPath("..//Arts//" + FileUpload1.FileName));

                }
                else
                {
                    Response.Write("<script>alert('Invalid file type.')</script>");
                }

                if (FileUpload2.HasFile && (Path.GetExtension(FileUpload2.FileName) == ".jpg" || Path.GetExtension(FileUpload2.FileName) == ".jpeg" || Path.GetExtension(FileUpload2.FileName) == ".png"))
                {
                    FileUpload2.SaveAs(Server.MapPath("..//Arts//" + FileUpload2.FileName));

                }
                else
                {
                    Response.Write("<script>alert('Invalid file type.')</script>");
                }

                if (FileUpload3.HasFile && (Path.GetExtension(FileUpload3.FileName) == ".jpg" || Path.GetExtension(FileUpload3.FileName) == ".jpeg" || Path.GetExtension(FileUpload3.FileName) == ".png"))
                {
                    FileUpload3.SaveAs(Server.MapPath("..//Arts//" + FileUpload3.FileName));

                }
                else
                {
                    Response.Write("<script>alert('Invalid file type.')</script>");
                }

                conn.Open();
                SqlCommand cmd = new SqlCommand("AddAnArt_SP", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("atype", ddltype.SelectedItem.ToString());
                cmd.Parameters.Add("title", txtartitle.Text);
                cmd.Parameters.Add("artist", txtartitle.Text);
                cmd.Parameters.Add("img1", "..//Arts//" + FileUpload1.FileName);
                cmd.Parameters.Add("img2", "..//Arts//" + FileUpload2.FileName);
                cmd.Parameters.Add("img3", "..//Arts//" + FileUpload3.FileName);
                cmd.Parameters.Add("qty", txtqty.Text);
                cmd.Parameters.Add("price", txtprice.Text);
                cmd.Parameters.Add("descr", txtdescr.Text);
                cmd.ExecuteNonQuery();
                conn.Close();

            }
            catch (Exception exc)
            {
                Response.Write("<script>alert('" + exc.ToString() + "')</script>");
            }
        }
    }
}