using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication5
{
    public partial class ÜyeOnay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[5].ConnectionString);
            string sorgu = "Select * From Iletisim ";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnn.Close();

        }
    }
}