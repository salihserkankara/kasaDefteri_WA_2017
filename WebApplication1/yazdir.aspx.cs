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
    public partial class yazdir : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("workstation id=mssql11.domainhizmetleri.com;packet size=4096;user id=kasadeft_onur;pwd=Onur1996.;data source=mssql11.domainhizmetleri.com;persist security info=False;initial catalog=kasadeft_onur");
        protected void Page_Load(object sender, EventArgs e)
        {
            girentoplam();
            cikantoplam();
            TextBox3.Text = (int.Parse(TextBox1.Text) - int.Parse(TextBox2.Text)).ToString();
        }
        protected void girentoplam()
        {
            string islem = "select sum (giren) as gtoplam from kasa";
            baglanti.Open();
            SqlCommand komut = new SqlCommand(islem, baglanti);
            TextBox1.Text = komut.ExecuteScalar().ToString();
            baglanti.Close();
        }
        protected void cikantoplam()
        {
            string islem = "select sum (cikan) as gtoplam from kasa";
            baglanti.Open();
            SqlCommand komut = new SqlCommand(islem, baglanti);
            TextBox2.Text = komut.ExecuteScalar().ToString();
            baglanti.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("rapor.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}