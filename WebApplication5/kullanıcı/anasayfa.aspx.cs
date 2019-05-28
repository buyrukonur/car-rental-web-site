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
    public partial class anasayfa : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           Label1.Visible = false;
          Label2.Visible = false;


          string sorgu = "Select * From Araba ";
          SqlCommand cmd = new SqlCommand(sorgu, cnn);
          cnn.Open();

          SqlDataReader dr = cmd.ExecuteReader();
          DataList1.DataSource = dr;
          DataList1.DataBind();
          cnn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToString();
            Label2.Text = Calendar2.SelectedDate.ToString();

            string ekle = "insert into Kiralama (kiralamaAlısYeri,kiralamaTeslimYeri,kiralamaAlısTarih,kiralamaTeslimTarih) Values('" + TextBox6.Text + "','" + TextBox1.Text + "','" + Label1.Text + "','" + Label2.Text + "')";
            ConnectionQuerry.ExecuteQueries(ekle);


            int fark;
            fark = int.Parse(Label4.Text) - int.Parse(Label3.Text);
            Label5.Text = fark.ToString();

            int toplam = fark * 2;
            Label6.Text = toplam.ToString();
            
            


        }
        string agun, aay, vgun, vay;

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            agun = Calendar1.SelectedDate.ToString("dd");
            Label3.Text = agun.ToString();

           
           
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            vgun = Calendar2.SelectedDate.ToString("dd");
            Label4.Text = vgun.ToString();


        }
    }
}