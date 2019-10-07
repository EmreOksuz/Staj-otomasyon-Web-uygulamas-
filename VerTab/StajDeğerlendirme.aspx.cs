using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.IO;
using System.ComponentModel;
using System.Data;
using System.Collections.Generic;
using System.Windows.Forms;

public partial class StajDeğerlendirme : System.Web.UI.Page
{
    public float KabulEdilen2 = 0;
    public string deger;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E32BK4C;Initial Catalog=STAJ;Integrated Security=True");

    protected void Kaydet_Click(object sender, EventArgs e)
    {
        if (Convert.ToSingle(ddTB.Text) >= 0 && Convert.ToSingle(ddTB.Text) <= 100 && Convert.ToSingle(ccTB.Text) <= 100 && Convert.ToSingle(ccTB.Text) >= 0 && Convert.ToSingle(ivyTB.Text) <= 100 && Convert.ToSingle(ivyTB.Text) >= 0 && Convert.ToSingle(akdTB.Text) <= 100 && Convert.ToSingle(akdTB.Text) >= 0 &&
               Convert.ToSingle(iaktTB.Text) <= 100 && Convert.ToSingle(iaktTB.Text) >= 0 && Convert.ToSingle(projeTB.Text) <= 100 && Convert.ToSingle(projeTB.Text) >= 0 && Convert.ToSingle(düzenTB.Text) <= 100 && Convert.ToSingle(düzenTB.Text) >= 0 && Convert.ToSingle(sunumTB.Text) <= 100 && Convert.ToSingle(sunumTB.Text) >= 0 &&
               Convert.ToSingle(icerikTB.Text) <= 100 && Convert.ToSingle(icerikTB.Text) >= 0 && Convert.ToSingle(mülakatTB.Text) <= 100 && Convert.ToSingle(mülakatTB.Text) >= 0)
        {

            KabulEdilen2 = Convert.ToSingle(ddTB.Text) * 4 / 100 + Convert.ToSingle(ccTB.Text) * 4 / 100 + Convert.ToSingle(ivyTB.Text) * 4 / 100 + Convert.ToSingle(akdTB.Text) * 4 / 100 +
                Convert.ToSingle(iaktTB.Text) * 4 / 100 + Convert.ToSingle(projeTB.Text) * 15 / 100 + Convert.ToSingle(düzenTB.Text) * 5 / 100 + Convert.ToSingle(sunumTB.Text) * 5 / 100 +
                Convert.ToSingle(icerikTB.Text) * 15 / 100 + Convert.ToSingle(mülakatTB.Text) * 40 / 100;



            baglanti.Open();


            string sorgu3 = "select * from Ogrenci";


            SqlDataAdapter adptr3 = new SqlDataAdapter(sorgu3, baglanti);
            DataTable dt3 = new DataTable(sorgu3);
            adptr3.Fill(dt3); // datatable dolduruldu..
            Double n = 0;
            for (int i = 0; i < dt3.Rows.Count; i++)
            {
                if (dt3.Rows[i][0].ToString() == SDON.Text && dt3.Rows[i][8].ToString() == SDBT.Text)
                {
                    basarıLabel.Text = KabulEdilen2.ToString();
                    n = (Convert.ToDouble(dt3.Rows[i][8]) * (Convert.ToDouble(basarıLabel.Text) / 100));
                    dt3.Rows[i][11] = n.ToString();

                    sonucLBL.Text = dt3.Rows[i][11].ToString() + " Gün";

                    SqlCommand komut = new SqlCommand("Update Ogrenci Set Numara=@p1,Ad=@p2,Soyad=@p3,Ögretim=@p4,KurumAd=@p5,Sehir=@p6,BaslamaTarih=@p7,BitisTarih=@p8,ToplamGün=@p9,StajKonusu=@p10,SınıfBilgisi=@p11,KabulEdilenGün=@p12,MülakatTarihi=@p13,Sonuc=@p14 where (Numara=@p1 and ToplamGün=@p9)", baglanti);


                    komut.Parameters.AddWithValue("@p1", dt3.Rows[i][0].ToString());
                    komut.Parameters.AddWithValue("@p2", dt3.Rows[i][1].ToString());
                    komut.Parameters.AddWithValue("@p3", dt3.Rows[i][2].ToString());
                    komut.Parameters.AddWithValue("@p4", dt3.Rows[i][3].ToString());
                    komut.Parameters.AddWithValue("@p5", dt3.Rows[i][4].ToString());
                    komut.Parameters.AddWithValue("@p6", dt3.Rows[i][5].ToString());
                    komut.Parameters.AddWithValue("@p7", dt3.Rows[i][6].ToString());
                    komut.Parameters.AddWithValue("@p8", dt3.Rows[i][7].ToString());
                    komut.Parameters.AddWithValue("@p9", dt3.Rows[i][8].ToString());
                    komut.Parameters.AddWithValue("@p10", dt3.Rows[i][9].ToString());
                    komut.Parameters.AddWithValue("@p11", dt3.Rows[i][10].ToString());
                    komut.Parameters.AddWithValue("@p12", dt3.Rows[i][11].ToString());
                    komut.Parameters.AddWithValue("@p13", dt3.Rows[i][12].ToString());
                    komut.Parameters.AddWithValue("@p14", dt3.Rows[i][13].ToString());
                    komut.ExecuteNonQuery();



                    baglanti.Close();


                }
            }
        }
        else
        {
            MessageBox.Show("Geçersiz Değer Girdiniz.Lütfen 0-100 arasında değer giriniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }
}