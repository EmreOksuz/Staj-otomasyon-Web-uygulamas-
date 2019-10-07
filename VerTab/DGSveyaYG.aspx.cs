using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;

public partial class DGSveyaYG : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E32BK4C;Initial Catalog=STAJ;Integrated Security=True");
    public string DosyaYolu;
    private object lblFile;


    protected void EkleBTN_Click(object sender, EventArgs e)
    {   
       
           }

    protected void DGKaydetBTN_Click(object sender, EventArgs e)
    {
        if (ÖnuTB.Text != "")
        {   
        if (ÖadTB.Text != "")
        {
        if (ÖsoyadTB.Text != "")
         {
        if (eoaTB.Text != "")
        {
        if (sekTB.Text != "")
        {
        if (ysgTB.Text != "")
        {
        if (kegsTB.Text != "")
        {
              baglanti.Open();
              SqlCommand komut = new SqlCommand("insert into DGSveYG(Onumarası,Oad,OSoyad,Okul,StajKurumu,YapılanGünSayısı,KabulEdilenGün,StajPdf) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", baglanti);

               string a = "C:/Kullanıcılar/Emre/Masaüstü/" + FileUpload1.FileName.ToString();

               komut.Parameters.AddWithValue("@p1", ÖnuTB.Text);
               komut.Parameters.AddWithValue("@p2", ÖadTB.Text);
               komut.Parameters.AddWithValue("@p3", ÖsoyadTB.Text);
               komut.Parameters.AddWithValue("@p4", eoaTB.Text);
               komut.Parameters.AddWithValue("@p5", sekTB.Text);
               komut.Parameters.AddWithValue("@p6", ysgTB.Text);
               komut.Parameters.AddWithValue("@p7", (Convert.ToInt16(kegsTB.Text)/2));
               komut.Parameters.AddWithValue("@p8", a);
                komut.ExecuteNonQuery();

               baglanti.Close();
               MessageBox.Show("Kayıt Eklendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);


         }
        else MessageBox.Show("Öğrencinin kabul edilen staj günü boş bırakılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);

         }
          else MessageBox.Show("Öğrencinin yaptığı staj günü boş bırakılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);

        }
         else MessageBox.Show("Öğrencinin Staj ettiği kurum adı boş bırakılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);

        }
        else MessageBox.Show("Öğrenci eski okul adı boş bırakılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
        else MessageBox.Show("Öğrenci soyismi boş bırakılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
         else MessageBox.Show("Öğrenci ismi boş bırakılamaz.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);

        }
        else MessageBox.Show("Öğrenci Numarası boş bırakılamaz", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Error);

    }
    
       
}