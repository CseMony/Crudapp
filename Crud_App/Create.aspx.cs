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
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblCustomer(CustomerName,Address,Email,Phone) Values('" + txtCName.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('New Customer has been added');  </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "New Customer added Successfully ";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }
                
            }
            else
            {
                Response.Write("<script> alert('Customer add failed');  </script>");
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        private bool isformvalid()
        {
            if (txtCName.Text == "")
            {
                Response.Write("<script> alert('Customer Name not valid');  </script>");
                txtCName.Focus();

                return false;
            }
            else if (txtAddress.Text == "")
            {
                Response.Write("<script> alert('Address not valid');  </script>");
                txtAddress.Focus();
                return false;
            }
           
            
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email not valid');  </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtPhone.Text == "")
            {
                Response.Write("<script> alert('Phone not valid');  </script>");
                txtPhone.Focus();
                return false;
            }

            return true;
        }

        private void clr()
        {
            txtCName.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
        }
    }
}