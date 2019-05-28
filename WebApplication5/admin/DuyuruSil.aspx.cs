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
    public partial class DuyuruSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text != "")
            {

                string Sil = "Delete From Duyurular Where Baslik= '" + DropDownList1.Text + "'";
                ConnectionQuerry.ExecuteQueries(Sil);
                Response.Redirect("DuyuruSil.aspx");

                Label2.Visible = true;
                Label2.Text = "Duyuru Başarıyla Silinmiştir.";

            }
            
    

            

        }
    }
}