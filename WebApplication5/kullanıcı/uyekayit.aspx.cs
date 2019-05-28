using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication5.kullanıcı
{
    public partial class uyekayit : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true && CheckBox2.Checked == true)
            {
                string sorgu = "insert into Uyeler (uyeAd,uyeSoyad,uyeKullaniciAdi,uyeSifre,uyeEmail) Values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                ConnectionQuerry.ExecuteQueries(sorgu);
                Label2.Visible = true;
                Label1.Visible = false;
            }
            else
            {
                Label2.Text = " Seçimleri işaretleyiniz!";
            }
          

                
         

           
            
            
        }

    }
}