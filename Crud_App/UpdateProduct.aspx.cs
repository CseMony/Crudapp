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
    public partial class UpdateProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void txtUpdate_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString);
            if (con.State == ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("update tblProducts set ProductName=@ProductName,Quantity=@Quantity,Date=@Date,Price=@Price where ProductID=@ProductID", con);
            cmd.Parameters.AddWithValue("@ProductID", Convert.ToInt32(txtPId.Text));

            cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text);
            cmd.Parameters.AddWithValue("@Quantity", txtQty.Text);
            cmd.Parameters.AddWithValue("@Date", txtDate.Text);
            cmd.Parameters.AddWithValue("@Price", txtPrice.Text);
            Response.Write("<script>alert('Update successfully')</script>");
            lblMsg.Text = "Updated Successfully ";
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("ProductRead.aspx");




        }
    }
}