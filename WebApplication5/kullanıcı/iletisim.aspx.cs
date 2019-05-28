using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.kullanıcı
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            string sorgu = "insert into Iletisim (iletisimAd,iletisimSoyad,iletisimEmail,iletisimKonu,iletisimIcerik) Values('" + txt_ad.Text + "','" + txt_soyad.Text + "','" + txt_email.Text + "','" + txt_konu.Text + "','" + txt_icerik.Text + "')";
            ConnectionQuerry.ExecuteQueries(sorgu);

            Label1.Text = "Mesajınız Başarıyla Gönderilmiştir.";

            txt_ad.Text = "";
            txt_soyad.Text = "";
            txt_email.Text = "";
            txt_icerik.Text = "";
            txt_konu.Text = "";
        }

      
    }
}