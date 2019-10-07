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

public partial class Raporlar : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E32BK4C;Initial Catalog=STAJ;Integrated Security=True");
 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }

    protected void göster_Click(object sender, EventArgs e)
    {
        baglanti.Open();
  
        string sorgu = "select * from Ogrenci";
        SqlDataAdapter adptr = new SqlDataAdapter(sorgu, baglanti);
        DataTable dt = new DataTable(sorgu);
        adptr.Fill(dt); // datatable dolduruldu..
        Double toplamGün = 0;
        Double toplamKeGÜN = 0;
        Double a = 0;

        for (int i = 0; i < dt.Rows.Count; i++)
        {


            //  listBox1.Items.Add(dt.Rows[i][8].ToString() + dt.Rows[i][11].ToString());

            if (Sehirler.Text == dt.Rows[i][5].ToString())
            {

                toplamGün += Convert.ToDouble(dt.Rows[i][8]);
                toplamKeGÜN += Convert.ToDouble(dt.Rows[i][11]); 

            }


        }
        a = ((toplamKeGÜN / toplamGün) * 100);
        a = Math.Round(a, 2);
        sbo.Text = "%"+a.ToString();
        baglanti.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
   
        string sorgu2 = "select * from Ogrenci";
        SqlDataAdapter adptr2 = new SqlDataAdapter(sorgu2, baglanti);
        DataTable dt2 = new DataTable(sorgu2);
        adptr2.Fill(dt2); // datatable dolduruldu..
        Double toplamGün2 = 0;
        Double toplamKeGÜN2 = 0;
        Double b = 0;

        for (int i = 0; i < dt2.Rows.Count; i++)
        {

            if (Konu.Text == dt2.Rows[i][9].ToString())
            {

                toplamGün2 += Convert.ToDouble(dt2.Rows[i][8]);
                toplamKeGÜN2 += Convert.ToDouble(dt2.Rows[i][11]);

            }


        }
        b = ((toplamKeGÜN2 / toplamGün2) * 100);
        b = Math.Round(b, 2);
        KonuL.Text = "%" + b.ToString();
        baglanti.Close();
    }
   

}