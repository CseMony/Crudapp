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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void txtUpdate_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString);
            if (con.State == ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("update tblCustomer set CustomerName=@CustomerName,Address=@Address,Email=@Email,Phone=@Phone where CustomerID=@CustomerID", con);
            cmd.Parameters.AddWithValue("@CustomerID", Convert.ToInt32(txtId.Text));
            
            cmd.Parameters.AddWithValue("@CustomerName", txtCName.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            Response.Write("<script>alert('Update successfully')</script>");
            lblMsg.Text = "Updated Successfully ";
            cmd.ExecuteNonQuery();
            con.Close();
          
            lblMsg.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("Read.aspx");
            



        }
            
        
        
    }
}