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
    public partial class CreateProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblProducts(ProductName,Quantity,Date,Price) Values('" + txtProductName.Text + "','" + txtQty.Text + "','" + txtDate.Text + "','" + txtPrice.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('New Product has been added');  </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "New Product added Successfully ";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }

            }
            else
            {
                Response.Write("<script> alert('Products add failed');  </script>");
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isformvalid()
        {
            if (txtProductName.Text == "")
            {
                Response.Write("<script> alert('Product Name not valid');  </script>");
                txtProductName.Focus();

                return false;
            }
            else if (txtQty.Text == "")
            {
                Response.Write("<script> alert('Quantity not valid');  </script>");
                txtQty.Focus();
                return false;
            }


            else if (txtDate.Text == "")
            {
                Response.Write("<script> alert('Date not valid');  </script>");
                txtDate.Focus();
                return false;
            }
            

            return true;
        }
        private void clr()
        {
            txtProductName.Text = string.Empty;
            txtQty.Text = string.Empty;
            txtDate.Text = string.Empty;
            
        }
    }
    
}