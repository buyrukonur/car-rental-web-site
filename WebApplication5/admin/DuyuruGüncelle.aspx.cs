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
    public partial class DuyuruGüncelle : System.Web.UI.Page
    {
    
        esqbaglantisi baglan = new esqbaglantisi();
        string duyuruID = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            duyuruID = Request.QueryString["duyuruID"];

            if (Page.IsPostBack == false)
            {

                SqlCommand güncelle = new SqlCommand("Select * From Duyurular Where duyuruID = '" + duyuruID + "'", baglan.baglan());

                SqlDataReader drgüncelle = güncelle.ExecuteReader();

                DataTable dtgüncelle = new DataTable("tablo");
                dtgüncelle.Load(drgüncelle);

                DataRow row = dtgüncelle.Rows[0];
                TextBox5.Text = row["duyuruBaslik"].ToString();
                TextBox3.Text = row["duyuruKonu"].ToString();
                TextBox4.Text = row["duyuruIcerik"].ToString();      
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand güncelle = new SqlCommand("Update Duyurular Set duyuruBaslik = '" + TextBox5.Text + "',duyuruKonu = '" + TextBox3.Text + "',duyuruIcerik= '" + TextBox4.Text + "' Where duyuruID = '"+duyuruID+ "'", baglan.baglan());
            
            güncelle.ExecuteNonQuery();

            Response.Redirect("DuyuruGöster.aspx");
        }
    }
}