using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class ArabaResim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                BindImageRepeater();
            }
        }
        private void BindGridView()
        {
            string CS = ConfigurationManager.ConnectionStrings["Ders"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spGetAllSliderImages", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        protected string GetActiveClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";
            }
        }
        private void BindImageRepeater()
        {
            string CS = ConfigurationManager.ConnectionStrings["Ders"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spGetSliderImages", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                sda.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                if (SliderFileUpload.PostedFile != null)
                {
                    string FileName = Path.GetFileName(SliderFileUpload.PostedFile.FileName);
                    //Save files to disk  
                    SliderFileUpload.SaveAs(Server.MapPath("images/" + FileName));
                    //Add Entry to DataBase  
                    string CS = ConfigurationManager.ConnectionStrings["Ders"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("spInsertSliderImages", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        cmd.Parameters.AddWithValue("@ImageName", FileName);
                        cmd.Parameters.AddWithValue("@ImagePath", "images/" + FileName);
                        cmd.ExecuteNonQuery();
                        BindGridView();
                        BindImageRepeater();
                    }
                }

            }
            catch (Exception)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}
     
 

        
    
