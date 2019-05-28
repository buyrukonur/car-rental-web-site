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
    public partial class Mesajlar : System.Web.UI.Page
    {
        string iletisimID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
          

            iletisimID = Request.QueryString["iletisimID"];
            islem = Request.QueryString["islem"];

            if (islem=="sil")
            {
                string sil = "Delete From Iletisim Where iletisimID= '" + iletisimID + "'";
                ConnectionQuerry.ExecuteQueries(sil);
                
            }
          



            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
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