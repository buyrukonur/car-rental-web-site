using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.kullanıcı
{
    public partial class aracsecimi : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        string kiralamaucret = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string sorgu2 = " SELECT top 1 * FROM Kiralama ORDER BY kiralamaID DESC ";
            SqlCommand cmd2 = new SqlCommand(sorgu2, cnn);
            cnn.Open();

            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();
            cnn.Close();


            kiralamaucret = Request.QueryString["Fiyat"];


     
          

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (DropDownList3.Text == "Tümü" )
            {
                string sorgu1 = "Select * From Araba ";
                SqlCommand cmd1 = new SqlCommand(sorgu1, cnn);
                cnn.Open();

                SqlDataReader dr1 = cmd1.ExecuteReader();
                DataList1.DataSource = dr1;
                DataList1.DataBind();
                cnn.Close();
            }
            if (DropDownList3.Text != "Tümü")
            {
                string sorgu = "Select * From Araba Where Yakıt= '" + DropDownList2.Text + "'";
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                cnn.Close();                
            }
            if (DropDownList2.Text != "Tümü")
            {
                  string sorgu = "Select * From Araba Where VitesTürü= '" + DropDownList3.Text + "'";
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                cnn.Close(); 
            }
        

        }

  

     
    }
}
        

	



