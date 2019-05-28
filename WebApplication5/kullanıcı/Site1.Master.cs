using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace WebApplication5.kullanıcı
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
          

        }
    }
}