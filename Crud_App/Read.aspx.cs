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
    public partial class Read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
                BindCustomerRepeater();
            
        }

        private void BindCustomerRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CRUD"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCustomer", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrCustomer.DataSource = dt;
                        rptrCustomer.DataBind();
                    }
                }


            }
        }

        

        protected void rptrCustomer_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

       
    }
}