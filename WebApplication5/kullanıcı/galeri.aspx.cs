using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.kullanıcı
{
    public partial class galeri : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string sorgu = "Select * From Araba ";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnn.Close();


            string sorgu1 = "Select * From Araba ";
            SqlCommand cmd1 = new SqlCommand(sorgu1, cnn);
            cnn.Open();

            SqlDataReader dr1 = cmd.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
            cnn.Close();
        }
    }
}