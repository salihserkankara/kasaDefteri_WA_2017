using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class giren : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("workstation id=mssql11.domainhizmetleri.com;packet size=4096;user id=kasadeft_onur;pwd=Onur1996.;data source=mssql11.domainhizmetleri.com;persist security info=False;initial catalog=kasadeft_onur");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand();
            string tarih = TextBox1.Text;
            string saat = TextBox2.Text;
            string tur = "Giren";
            string aciklama = TextBox3.Text;
            int girenmiktar = Convert.ToInt32(TextBox4.Text);
            baglanti.Open();
            komut.Connection = baglanti;
            komut.CommandText = "INSERT INTO kasa (tarih, saat, tur, aciklama, giren) VALUES('" + tarih + "','" + saat + "','" + tur + "','" + aciklama + "','" + girenmiktar + "')";
            komut.ExecuteNonQuery();
            komut.Dispose();
            baglanti.Close();
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}