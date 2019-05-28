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
    public partial class AraçGüncelle : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        string arabaID = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            arabaID = Request.QueryString["arabaID"];

            if (Page.IsPostBack == false)
            {

                SqlCommand güncelle = new SqlCommand("Select * From Araba Where arabaID = '" + arabaID + "'", baglan.baglan());

                SqlDataReader drgüncelle = güncelle.ExecuteReader();

                DataTable dtgüncelle = new DataTable("tablo");
                dtgüncelle.Load(drgüncelle);


            }

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand güncelle = new SqlCommand("Update Araba Set Marka = '" + txtmarka.Text + "',Model = '" + txtmodel.Text + "',Fiyat= '" + txtfiyat.Text + "',VitesTürü='" + DropDownList1.Text + "',Yakıt= '" + DropDownList2.Text + "',KoltukSayısı= '" + DropDownList4.Text + "',Klima = '" + DropDownList3.Text + "' Where arabaID = '" + arabaID + "'", baglan.baglan());
            güncelle.ExecuteNonQuery();

            Response.Redirect("AraçGöster.aspx");


        }
       
    }
}