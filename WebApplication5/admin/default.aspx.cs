using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Data;



namespace WebApplication5
{
    public partial class _default : System.Web.UI.Page
    {

        ConnectionQuerry bgl = new ConnectionQuerry();


        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text = "";
            if (Session["kullaniciadi"] == null)
            {
                Response.Redirect("Giris.aspx");

            }


        }
        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == false)
            {
                txtfiyat.Text = "Resim seçiniz.";
   
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("/arabaresim/") + FileUpload1.FileName);
                string sorgu = "insert into Araba(Marka,Model,Fiyat,VitesTürü,Yakıt,KoltukSayısı,Klima,Resimler,Segment) Values('" + txtmarka.Text + "','" + txtmodel.Text + "','" + txtfiyat.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList4.Text + "','" + DropDownList3.Text + "','/arabaresim/" + FileUpload1.FileName + "','" + DropDownList5.Text + "')";
                ConnectionQuerry.ExecuteQueries(sorgu);
            }
        }

       
    }
}

          
       
     



       
    

          
           

        
    

