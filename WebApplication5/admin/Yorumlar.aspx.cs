using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication5
{
    public partial class Yorumlar : System.Web.UI.Page
    {

        string yorumID = "";
        string islem = "";
        esqbaglantisi baglan = new esqbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumID = Request.QueryString["yorumID"];
            islem = Request.QueryString["islem"];

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = "Select * From Yorum";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnn.Close();

            if (islem == "sil")
            {
                string sil = "Delete From Yorum Where yorumID = '" + yorumID + "'";
                ConnectionQuerry.ExecuteQueries(sil);

            }
            
           
        }

        
    }
}

        
    


















