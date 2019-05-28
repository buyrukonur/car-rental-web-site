using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Giris : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
           

            string sorgu = " Select * From Adminler Where KullaniciAdi = @kullaniciadi AND Sifre = @sifre";
            SqlCommand cmd = new SqlCommand(sorgu,cnn);
            cmd.Parameters.AddWithValue("@sifre", şifre.Text);

            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
              
                Response.Redirect("default.aspx");              
                
            }
            else
            {
                Label1.Text = "Kullanıcı Girişi Sağlanamadı";
            }

        }
    }
}