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
    public partial class DuyuruGöster : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if (Session["kullaniciadi"] == null)
            {
                Response.Redirect("Giris.aspx");

            }

            duyuruID = Request.QueryString["duyuruID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                string sil = "Delete from Duyurular where duyuruID='" + duyuruID + "'";
                ConnectionQuerry.ExecuteQueries(sil);

            }             

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = "Select * From Duyurular ";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cnn.Close();


            if (islem == "göster")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;


                SqlConnection cnn1 = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string sorgu1 = "Select * From Duyurular  where duyuruID = '" + duyuruID + "'";
                SqlCommand cmd1 = new SqlCommand(sorgu1, cnn1);
                cnn1.Open();

                SqlDataReader dr1 = cmd1.ExecuteReader();
                DataList2.DataSource = dr1;
                DataList2.DataBind();
                cnn1.Close();

            }
        }
    }
}


    
    