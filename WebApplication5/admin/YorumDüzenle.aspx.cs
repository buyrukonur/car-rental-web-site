using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.admin
{
    public partial class YorumDüzenle : System.Web.UI.Page
    {
        string yorumID = "";
        
        esqbaglantisi baglan = new esqbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {        

            yorumID = Request.QueryString["yorumID"];
            

            if (Page.IsPostBack == false)
            {
                
                SqlCommand güncelle = new SqlCommand("Select * From Yorum Where yorumID = '" + yorumID + "'", baglan.baglan());

                SqlDataReader drgüncelle = güncelle.ExecuteReader();

                DataTable dtgüncelle = new DataTable("tablo");
                dtgüncelle.Load(drgüncelle);

                DataRow row = dtgüncelle.Rows[0];
                TextBox5.Text = row["yorumAdSoyad"].ToString();
                TextBox3.Text = row["yorumEmail"].ToString();
                TextBox4.Text = row["yorumIcerik"].ToString();
            }
        }
    }
}
                
            
       
    
    
