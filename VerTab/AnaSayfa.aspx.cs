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
using System.Drawing;

public partial class AnaSayfa : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E32BK4C;Initial Catalog=STAJ;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        //stajKonusuTB.Text = DropDownlist1.SelectedValue;


    }
   
   


protected void button3_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        int sondeger = 0;
        string dgskn = önuTB2.Text;
        string sorgu = "select * from Ogrenci";
        

        SqlDataAdapter adptr = new SqlDataAdapter(sorgu, baglanti);
        DataTable dt = new DataTable(sorgu);
        adptr.Fill(dt); // datatable dolduruldu..
        int toplam = 0;
        int k = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][0].ToString() == önuTB2.Text)
            {

             
                listBox1.Items.Add(" "+dt.Rows[i][0].ToString() + "  " + dt.Rows[i][1].ToString() + "  " + dt.Rows[i][2].ToString() + "  " + dt.Rows[i][3].ToString() + ".Öğretim  " + dt.Rows[i][4].ToString() + "/" + dt.Rows[i][5].ToString() + "  " + dt.Rows[i][6].ToString()
                    + "--" + dt.Rows[i][7].ToString() + "  " + dt.Rows[i][8].ToString() + " Gün. Staj Konusu:  " + dt.Rows[i][9].ToString() + "  Sınıfı:" +
                           dt.Rows[i][10].ToString() + "  Kabul Edilen Gün Sayısı:" + dt.Rows[i][11].ToString());
                k++;
                toplam += Convert.ToInt16(dt.Rows[i][11]);

              /*  adTB.Text = dt.Rows[i][1].ToString();
                soyadTB.Text = dt.Rows[i][2].ToString();
                öTB.Text = dt.Rows[i][3].ToString();
                önuTB.Text = önuTB2.Text;*/
            
            }

        }

        string sorgu2 = "select * from DGSveYG";

      
        SqlDataAdapter adptr2 = new SqlDataAdapter(sorgu2, baglanti);
        DataTable dt2 = new DataTable(sorgu2);
        adptr2.Fill(dt2); // datatable dolduruldu..
        int toplam2 = 0;
        int k2 = 0;
        for (int i = 0; i < dt2.Rows.Count; i++)
        {

            

                if (dt2.Rows[i][0].ToString() == önuTB2.Text)
                {
                    listBox1.Items.Add(" "+dt2.Rows[i][0].ToString() + "  " + dt2.Rows[i][1].ToString() + "   " + dt2.Rows[i][2].ToString() + "   Önceki Okulu:" + dt2.Rows[i][3].ToString() + "   Staj yaptığı Kurum:" + dt2.Rows[i][4].ToString() +
                       " "+ "Yapılan Gün sayısı: " + dt2.Rows[i][5].ToString() + "   Kabul Edilen Gün Sayısı: " + dt2.Rows[i][6].ToString());
                    k2++;
                    toplam2 += Convert.ToInt16(dt2.Rows[i][5]);
                }
            
        

        }
        sondeger = toplam + toplam2;



        
        if (k == 0 )
        {

            adTB.Text = "";
            soyadTB.Text = "";
            öTB.Text = "";
            MessageBox.Show("Aradığınız numarada kayıt bulunmamaktadır.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);
           /* RedPB.Visible = false;
            GreenPB.Visible = false;*/
        }
        stajsonucuTB.Text = toplam.ToString();


        if (sondeger > 57)
        {
        /*    RedPB.Visible = false;
            GreenPB.Visible = true;*/
            MessageBox.Show(önuTB2.Text + " Numaralı öğrenci stajını Tamamlandı.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Information);

            SqlCommand günc = new SqlCommand("update Ogrenci set Sonuc='TAMAMLANDI' where Numara=@p1 ", baglanti);

            günc.Parameters.AddWithValue("@p1", önuTB2.Text);
            günc.ExecuteNonQuery();
           MessageBox.Show(önuTB2.Text + " Numaralı öğrenci stajını tamamladığı için Staj Durumu güncellenmiştir.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Information);

            listBox1.BackColor =Color.DarkGreen;
            baglanti.Close();



        }
        else
        {
          /*  GreenPB.Visible = false;
            RedPB.Visible = true;*/

            SqlCommand günc = new SqlCommand("update Ogrenci set Sonuc='TAMAMLANMADI' where Numara=@p1", baglanti);

            günc.Parameters.AddWithValue("@p1", önuTB2.Text);
            günc.ExecuteNonQuery();
           MessageBox.Show(önuTB2.Text + " Numaralı öğrenci stajını tamamlamadığı için Staj Durumu güncellenmiştir.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Information);
            listBox1.BackColor = Color.DarkRed;
            baglanti.Close();



        }
        baglanti.Close();

    }

    protected void tamamlaBTN_Click(object sender, EventArgs e)
    {

        
        if (Convert.ToInt16(tplamgünTB.Text) >= 15)
        {
            baglanti.Open();
            if (Convert.ToInt16(tplamgünTB.Text) < 25 || Convert.ToInt16(sınıfBilgiTB.Text) != 2)
            {
                if (Convert.ToInt16(tplamgünTB.Text) < 41)
                {
                    
                    SqlCommand komut = new SqlCommand("insert into Ogrenci(Numara,Ad,Soyad,Ögretim,KurumAd,Sehir,BaslamaTarih,BitisTarih,ToplamGün,StajKonusu,SınıfBilgisi,KabulEdilenGün,MülakatTarihi,Sonuc) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14)", baglanti);

                    komut.Parameters.AddWithValue("@p1", önuTB.Text);
                    komut.Parameters.AddWithValue("@p2", adTB.Text);
                    komut.Parameters.AddWithValue("@p3", soyadTB.Text);
                    komut.Parameters.AddWithValue("@p4", öTB.Text);
                    komut.Parameters.AddWithValue("@p5", KurumCB.Text);
                    komut.Parameters.AddWithValue("@p6", SehirCB.Text);
                    komut.Parameters.AddWithValue("@p7", dateTimePicker1.Text);
                    komut.Parameters.AddWithValue("@p8", dateTimePicker2.Text);
                    komut.Parameters.AddWithValue("@p9", tplamgünTB.Text);
                    komut.Parameters.AddWithValue("@p10", stajKonusuTB.Text);
                    komut.Parameters.AddWithValue("@p11", sınıfBilgiTB.Text);
                    komut.Parameters.AddWithValue("@p12", 0);
                    komut.Parameters.AddWithValue("@p13", MulakatTTB.Text);
                    komut.Parameters.AddWithValue("@p14", stajsonucuTB.Text);
                    komut.ExecuteNonQuery();

                    baglanti.Close();

                    baglanti.Open();     // bir staj yerinde toplam 40 günden fazla , olayı.

                            string sorgu = "select * from Ogrenci";

                            SqlDataAdapter adptr = new SqlDataAdapter(sorgu, baglanti);
                            DataTable dt = new DataTable(sorgu);
                            adptr.Fill(dt); // datatable dolduruldu..
                            int toplamYG = 0;

                            for (int i = 0; i < dt.Rows.Count; i++)
                            {
                                if (dt.Rows[i][4].ToString() == KurumCB.Text)
                               {
                                    toplamYG += Convert.ToInt16(dt.Rows[i][10]);
                                    if (toplamYG >= 40)
                                    {

                                        MessageBox.Show("Bir kurumda toplam staj günü 40 günden fazla olamaz.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);

                                    }
                                }
                            }
                            baglanti.Close(); 

                   MessageBox.Show("Kayıt Eklendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else if (stajKonusuTB.Text == "Arge")
                {

                    SqlCommand komut = new SqlCommand("insert into Ogrenci(Numara,Ad,Soyad,Ögretim,KurumAd,Sehir,BaslamaTarih,BitisTarih,ToplamGün,StajKonusu,SınıfBilgisi,KabulEdilenGün,MülakatTarihi,Sonuc) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14)", baglanti);
                    if (Convert.ToInt16(tplamgünTB.Text) < 61)
                    {
                      
                        komut.Parameters.AddWithValue("@p1", önuTB.Text);
                        komut.Parameters.AddWithValue("@p2", adTB.Text);
                        komut.Parameters.AddWithValue("@p3", soyadTB.Text);
                        komut.Parameters.AddWithValue("@p4", öTB.Text);
                        komut.Parameters.AddWithValue("@p5", KurumCB.Text);
                        komut.Parameters.AddWithValue("@p6", SehirCB.Text);
                        komut.Parameters.AddWithValue("@p7", dateTimePicker1.Text);
                        komut.Parameters.AddWithValue("@p8", dateTimePicker2.Text);
                        komut.Parameters.AddWithValue("@p9", tplamgünTB.Text);
                        komut.Parameters.AddWithValue("@p10", stajKonusuTB.Text);
                        komut.Parameters.AddWithValue("@p11", sınıfBilgiTB.Text);
                        komut.Parameters.AddWithValue("@p12", 0);

                        komut.Parameters.AddWithValue("@p13", MulakatTTB.Text);
                        komut.Parameters.AddWithValue("@p14", stajsonucuTB.Text);
                        komut.ExecuteNonQuery();
                        baglanti.Close();
                        MessageBox.Show("Kayıt Eklendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Arge'de 60 günden fazla staj yapılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Bir staj yerinde 40 günden fazla staj yapılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("2.Sınıf öğrencilerin staj süresi 25 günden fazla olamaz!", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            baglanti.Close();
        }
        else
        {
           MessageBox.Show("Staj Süresi 15 günden az olamaz!", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }


      
        //       kabuledilenTB.Text = (Convert.ToInt16(stj.basarıLabel.Text) * Convert.ToInt16(tplamgünTB.Text) / 100).ToString();
        //      kabuledilenTB.Text = stj.basarıLabel.Text;


    }

    protected void kayitsilBTN_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand sil = new SqlCommand("delete from Ogrenci where Numara=@k1", baglanti);


        sil.Parameters.AddWithValue("@k1", önuTB.Text);



        sil.ExecuteNonQuery();


        baglanti.Close();
        MessageBox.Show("Kayıt Silindi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
    }

    protected void ListeTemizleButon_Click(object sender, EventArgs e)
    {
        listBox1.Items.Clear();
        listBox1.BackColor = Color.DarkGray;
    }

    protected void YeniEkleBTN_Click(object sender, EventArgs e)
    {
        önuTB.Text = "";
        adTB.Text = "";
        soyadTB.Text = "";
        öTB.Text = "";
        KurumCB.Text = "";
        SehirCB.Text = "";
        tplamgünTB.Text = "";
        stajKonusuTB.Text = "";
        sınıfBilgiTB.Text = "";
    
        stajsonucuTB.Text = "";
        önuTB.Focus();
    }
   
}