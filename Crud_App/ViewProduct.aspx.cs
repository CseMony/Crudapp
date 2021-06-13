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
    public partial class ViewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindProductRepeater();
        }

        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select ProductID,ProductName,Quantity,Price from tblProducts", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProduct.DataSource = dt;
                        rptrProduct.DataBind();
                    }
                }


            }
        }

        protected void lbcart_Click(object sender, EventArgs e)
        {      
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString))
            {
                
                con.Open();
                foreach (RepeaterItem item in rptrProduct.Items)
                {
                    
                    
                    Label lblProductID = (Label)item.FindControl("lblProductID");
                    string ID = lblProductID.Text;

                    Label lblProductName = (Label)item.FindControl("lblProductName");
                    string Name = lblProductName.Text;

                    Label lblPrice = (Label)item.FindControl("LblPrice");
                    string Price = lblPrice.Text;

                    TextBox lblQuantity = (TextBox)item.FindControl("txtQty");
                    string quantity = lblQuantity.Text;


                        SqlCommand cmd = new SqlCommand("Insert into tblCart VALUES(ProductID = '"+ ID + "', ProductName = '"+ Name + "', Quantity = '"+ quantity + "',Price='"+ Price + "')", con);
                        cmd.ExecuteNonQuery();
                        Response.Write("<script> alert('New  has been added');  </script>");
                    con.Close();


                    //function.cmd("INSERT INTO tbl_Order(userid, productid, name, surname, email, identificationnumber, phone, productimage, productname, piece, cargo, totalprice, paymenttype, orderdate) VALUES('" + Session["userid"] + "', '" + lblproductid.Text + "', '" + Session["name"] + "', '" + Session["surname"] + "', '" + Session["email"] + "', '" + Session["identificationnumber"] + "', '" + Session["phone"] + "', '" + imgproductimage.ImageUrl + "', '" + lblproductname.Text + "', '" + lblpiece.Text + "', '" + Session["cargo"] + "', '" + LblTotalPrice.Text + "', '" + DrpDwnPaymentType.Text + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')");
                }
            }

        }

        
        protected void rptrProduct_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            
        }
    }
}