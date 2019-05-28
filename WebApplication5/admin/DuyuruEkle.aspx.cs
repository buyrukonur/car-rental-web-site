using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication5
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack== true)
            {
                             
            }                           
            DateTime tarih = DateTime.Now;
            Label1.Text = tarih.ToString("dd MMMM yyyy H:mm");
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (fl_duyururesim.HasFile == false)
            {
                Label1.Text = "Resim seçiniz.";

            }
            else
            {
                fl_duyururesim.SaveAs(Server.MapPath("/duyururesim/") + fl_duyururesim.FileName);
                string sorgu = "insert into Duyurular(duyuruBaslik,duyuruKonu,duyuruIcerik,duyuruResim) Values('" + txt_duyurubaslik.Text.ToString()+ "','" + txt_duyurukonu.Text.ToString() + "','" + txt_duyuruicerik.Text.ToString() +  "','/duyururesim/" +  fl_duyururesim.FileName+  "')";
               
                ConnectionQuerry.ExecuteQueries(sorgu);
            }
          
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            txt_duyuruicerik.Enabled = true;          
                            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            txt_duyurukonu.Enabled = true;
        }
    }
}