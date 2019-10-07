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

public partial class Mülakat : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-E32BK4C;Initial Catalog=STAJ;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();
        string sorgu = "select * from Ogrenci";
        

        SqlDataAdapter adptr = new SqlDataAdapter(sorgu, baglanti);
        DataTable dt = new DataTable(sorgu);
        adptr.Fill(dt); // datatable dolduruldu..

        
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][13].ToString() == "TAMAMLANMADI")
                {


                    listBox1.Items.Add(" "+dt.Rows[i][0].ToString() + "     " + dt.Rows[i][1].ToString() + "  " + dt.Rows[i][2].ToString() + " --  " + dt.Rows[i][3].ToString() + ".Öğretim  " + " Staj Yaptığı Gün Sayısı:  " + dt.Rows[i][8].ToString() + " Kabul Edilen Gün Sayısı:" + dt.Rows[i][11].ToString() + "   Mülakat Tarihi:" + dt.Rows[i][12].ToString());


                }

            }
        
        string sorgu2 = "select * from StajKo";


        SqlDataAdapter adptr2 = new SqlDataAdapter(sorgu2, baglanti);
        DataTable dt2 = new DataTable(sorgu2);
        adptr2.Fill(dt2); // datatable dolduruldu..
        int k = 0;

        for (int i = 0; i < dt2.Rows.Count; i++)
        {

            DropDownList2.Items.Add(dt2.Rows[k][2].ToString() + " " + dt2.Rows[k][0].ToString() + "  " + dt2.Rows[k][1].ToString() );
            DropDownList3.Items.Add(dt2.Rows[k][2].ToString() + " " + dt2.Rows[k][0].ToString() + "  " + dt2.Rows[k][1].ToString());

            k++;


        }

        baglanti.Close();




    }

    protected void MRaporBTN_Click(object sender, EventArgs e)
    {
        baglanti.Open();


        string sorgu3 = "select * from Mülakat";
        string sorgu = "select * from Ogrenci";

        SqlDataAdapter adptr3 = new SqlDataAdapter(sorgu3, baglanti);
        DataTable dt3 = new DataTable(sorgu3);
        adptr3.Fill(dt3); // datatable dolduruldu..

       


        SqlDataAdapter adptr = new SqlDataAdapter(sorgu, baglanti);
        DataTable dt = new DataTable(sorgu);
        adptr.Fill(dt); // datatable dolduruldu..



        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][13].ToString() == "TAMAMLANMADI")
            {
                if(DropDownList1.Text.ToString()== dt.Rows[i][0].ToString())
                {

                    SqlCommand komut = new SqlCommand("insert into Mülakat(Numara,Adı,Soyadı,Ögre,Tarih,StajK1,StajK2) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", baglanti);


                    komut.Parameters.AddWithValue("@p1", DropDownList1.Text);
                    komut.Parameters.AddWithValue("@p2", dt.Rows[i][1].ToString());
                    komut.Parameters.AddWithValue("@p3", dt.Rows[i][2].ToString());
                    komut.Parameters.AddWithValue("@p4", dt.Rows[i][3].ToString());
                    komut.Parameters.AddWithValue("@p5", dateTimePicker3.Text);
                    komut.Parameters.AddWithValue("@p6", DropDownList2.Text);
                    komut.Parameters.AddWithValue("@p7", DropDownList3.Text);

                    komut.ExecuteNonQuery();






                }


            }

        }
        listBox1.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][13].ToString() == "TAMAMLANMADI")
            {


                listBox1.Items.Add(dt.Rows[i][0].ToString() + "  " + dt.Rows[i][1].ToString() + "  " + dt.Rows[i][2].ToString() + "  " + dt.Rows[i][3].ToString() + ".Öğretim  " + " Staj Yaptığı Gün Sayısı:  " + dt.Rows[i][8].ToString() + "  Kabul Edilen Gün Sayısı:" + dt.Rows[i][11].ToString() + " Mülakat Tarihi:" + dt.Rows[i][12].ToString());


            }

        }
        baglanti.Close();

        
    }
}