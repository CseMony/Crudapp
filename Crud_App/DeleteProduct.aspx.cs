using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Crud_App
{
    public partial class DeleteProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void txtDelete_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from tblproducts where ProductID='" + txtPId.Text + "'", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Selected ID is deleted successfully');  </script>");
                clr();
                con.Close();
                lblMsg.Text = "Delete Successfully";
                lblMsg.ForeColor = System.Drawing.Color.Green;

            }

        }
        private void clr()
        {
            txtPId.Text = string.Empty;
        }
    }
}