using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("workstation id=mssql11.domainhizmetleri.com;packet size=4096;user id=kasadeft_onur;pwd=Onur1996.;data source=mssql11.domainhizmetleri.com;persist security info=False;initial catalog=kasadeft_onur");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("giren.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cikan.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand sil = new SqlCommand("delete from kasa where kimlik=" + GridView1.SelectedValue + "", baglanti);
                baglanti.Open();
                sil.ExecuteNonQuery();
                sil.Dispose();
                baglanti.Close();
                Response.Redirect("WebForm1.aspx");
            }
            catch
            {
                Response.Write("Lütfen Silmek İstediğiniz Kaydı Seçiniz.");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("yazdir.aspx");
        }
    }
}