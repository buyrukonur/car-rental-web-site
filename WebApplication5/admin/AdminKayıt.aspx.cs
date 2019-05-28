using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Threading.Tasks;


namespace WebApplication5
{
    public partial class AdminKayıt : System.Web.UI.Page
    {

        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Label6.Visible = false;
            Label1.Visible = false;                   
                               
        }          

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sorgu = " Select * From Adminler Where KullaniciAdi = @kullaniciadi AND Sifre = @sifre";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@kullaniciadi", TextBox5.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBox6.Text);

            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Panel1.Visible = false;
                Panel2.Visible = true;    
                
            }
            else
            {
                Label6.Visible = true;
                Label6.Text = "Kullanıcı Girişi Sağlanamadı";
                
            }  
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sifre, sifretekrar;
            sifre = TextBox2.Text;
            sifretekrar = TextBox7.Text;
                
            DateTime tarih = DateTime.Now;
            Label2.Text = tarih.ToString();
         
            Label1.Visible = true;

            if (sifre == sifretekrar && TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

                cnn.Open();
                          
                    string sorgu = "Insert into Adminler (AdminAd,AdminSoyad,KullaniciAdi,Sifre,KayıtTarih)  Values ('" + TextBox3.Text + "','" + TextBox4.Text + "','"+ TextBox1.Text + "','" + TextBox2.Text + "','" + Label2.Text.ToString()+"')";

                    SqlCommand cmd = new SqlCommand(sorgu, cnn);
                    cmd.ExecuteNonQuery();
                    cnn.Close();                                
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Ekleme başarısız.";
            }
        }

        
    }
}