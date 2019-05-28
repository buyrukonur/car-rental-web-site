using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication5
{
    public partial class Programlama : System.Web.UI.Page
    {
        string arabaID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciadi"] == null)
            {
                Response.Redirect("Giris.aspx");

            }
            arabaID = Request.QueryString["arabaID"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                string sil = "Delete from Araba where arabaID='" + arabaID + "'";
                ConnectionQuerry.ExecuteQueries(sil);                
            }
      
           SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

            string sorgu = "Select * From Araba ";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnn.Close();  
        }

   
        
    
    }
}