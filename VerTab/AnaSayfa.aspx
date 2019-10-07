<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Staj Sayfası</title>

    <link href="/Stil.css" rel="stylesheet" />
    <style type="text/css">
        .listBox1 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

            <header>
                <div id="logo">

                    <img src="ktulogo_tr.png" width="135" height="135"  />

                    <div id="yazı">

                        &nbsp;&nbsp;&nbsp;

                        Karadeniz Teknik Üniversitesi Staj Sayfası    
                    </div> 
        
                </div>
              
                               
            </header>

          

             <header2>

                   <nav>

                <ul>
                    <li>
                       <a href="AnaSayfa.aspx">Ana Sayfa</a> 
                    </li>
                    <li>
                       <a href="DGSveyaYG.aspx" >DGS veya YG </a> 
                    </li>
                      <li>
                           <a href="StajDeğerlendirme.aspx">Staj Değerlendirme</a>
                          
                    </li>
                      <li>
                           <a href="StajKomisyonu.aspx">Staj Komisyonu</a>
                          
                    </li>
                       <li>
                           <a href="Mülakat.aspx">Mülakat</a>
                         
                    </li>
                      <li>
                           <a href="Raporlar.aspx"> Raporlar</a>
                         
                    </li>

                </ul>

            </nav>
                 <div class="arama">
                     <asp:TextBox ID="önuTB2" CssClass="önuTB2" runat="server" placeholder="Arama" AutoCompleteType="Disabled" />
                     <asp:Button ID="button3" CssClass="button3" Text="Ara" runat="server" onClick="button3_Click" />

                 </div>
          

            </header2>

                   <div class="ortabölüm1" style=" font-size: 18px; ">

                   <br>&nbsp;&nbsp;<div style="font-size:20px; margin-left:10px; font-weight: bold; font-style: italic;">  Öğrenci Bilgileri    </div>  

                       <br/> <br/><br>&nbsp;&nbsp;<span>Öğrenci Numarası:</span>
                       <asp:TextBox ID="önuTB" CssClass="önuTB" runat="server" AutoCompleteType="Disabled" />

                         <br>  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Ad:</span>
                       <asp:TextBox ID="adTB" CssClass="adTB" runat="server" AutoCompleteType="Disabled" DataSourceID="Ogrenci" DataTextField="StajKonusu" DataValueField="StajKonusu"/>

                         <br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Soyad:</span>
                       <asp:TextBox ID="soyadTB" CssClass="soyadTB" runat="server" AutoCompleteType="Disabled"/>

                         <br> <br>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Öğretim:</span>
                       <asp:TextBox ID="öTB" CssClass="öTB" runat="server" AutoCompleteType="Disabled" />

                          <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>*Staj Sonucu:</span>
                       
                       
                       <asp:Label ID="stajsonucuTB" Text="0" CssClass="stajsonucuTB"  runat="server"  />
                      <div class"renkler" style="margin-left:100px; margin-top:20px; "> 

                          </div>

                 </div>

             <div class="ortabölüm2" style="font-size: 18px; ">

                   <br>&nbsp;&nbsp;<div style="font-size:20px;margin-left:10px; font-weight: bold; font-style: italic;">  Staj Bilgileri   </div>

                 <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Kurum Adı:</span>
                       <asp:TextBox ID="KurumCB" CssClass="KurumCB" runat="server"  />

                  <br/><br>&nbsp;<span>&nbsp; Başlama Tarihi:</span>
                       <asp:TextBox ID="dateTimePicker1" CssClass="dateTimePicker1" runat="server" TextMode="Date" />

                  <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Toplam Gün:</span>
                       <asp:TextBox ID="tplamgünTB" CssClass="tplamgünTB" runat="server" AutoCompleteType="Disabled" />

                  <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Sınıf Bilgisi:</span>
                       <asp:TextBox ID="sınıfBilgiTB" CssClass="sınıfBilgiTB" runat="server" AutoCompleteType="Disabled"/>

                  <br/><br>&nbsp;&nbsp;&nbsp;<span>Mülakat Tarihi:</span>
                       <asp:TextBox ID="MulakatTTB" CssClass="MulakatTTB" runat="server" TextMode="Date" AutoCompleteType="Disabled" Width="150px"/>

                 <div class="düzen" style="font-size: 18px; margin-left:360px; margin-top:-240px; ">
               <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;&nbsp;&nbsp;&nbsp; Şehir:</span>
                       <asp:DropDownList ID="SehirCB"  CssClass="SehirCB" runat="server" > 
                      <asp:ListItem Text=" -- " Value="0"></asp:ListItem>
                       <asp:ListItem Value="Adana">Adana</asp:ListItem>
            <asp:ListItem Value="Adıyaman">Adıyaman</asp:ListItem>
            <asp:ListItem Value="Afyonkarahisar">Afyonkarahisar</asp:ListItem>
            <asp:ListItem Value="Ağrı">Ağrı</asp:ListItem>
            <asp:ListItem Value="Amasya">Amasya</asp:ListItem>
            <asp:ListItem Value="Ankara">Ankara</asp:ListItem>
            <asp:ListItem Value="Antalya">Antalya</asp:ListItem>
            <asp:ListItem Value="Artvin">Artvin</asp:ListItem>
            <asp:ListItem Value="Aydın">Aydın</asp:ListItem>
            <asp:ListItem Value="Balıkesir">Balıkesir</asp:ListItem>
            <asp:ListItem Value="Bilecik">Bilecik</asp:ListItem>
            <asp:ListItem Value="Bingöl">Bingöl</asp:ListItem>
            <asp:ListItem Value="Bitlis">Bitlis</asp:ListItem>
            <asp:ListItem Value="Bolu">Bolu</asp:ListItem>
            <asp:ListItem Value="Burdur">Burdur</asp:ListItem>
            <asp:ListItem Value="Bursa">Bursa</asp:ListItem>
            <asp:ListItem Value="Çanakkale">Çanakkale</asp:ListItem>
            <asp:ListItem Value="Çankırı">Çankırı</asp:ListItem>
            <asp:ListItem Value="Çorum">Çorum</asp:ListItem>
            <asp:ListItem Value="Denizli">Denizli</asp:ListItem>
            <asp:ListItem Value="Diyarbakır">Diyarbakır</asp:ListItem>
            <asp:ListItem Value="Edirne">Edirne</asp:ListItem>
            <asp:ListItem Value="Elazığ">Elazığ</asp:ListItem>
            <asp:ListItem Value="Erzincan">Erzincan</asp:ListItem>
            <asp:ListItem Value="Erzurum">Erzurum</asp:ListItem>
            <asp:ListItem Value="Eskişehir">Eskişehir</asp:ListItem>
            <asp:ListItem Value="Gaziantep">Gaziantep</asp:ListItem>
            <asp:ListItem Value="Giresun">Giresun</asp:ListItem>
            <asp:ListItem Value="Gümüşhane">Gümüşhane</asp:ListItem>
            <asp:ListItem Value="Hakkari">Hakkari</asp:ListItem>
            <asp:ListItem Value="Hatay">Hatay</asp:ListItem>
            <asp:ListItem Value="Isparta">Isparta</asp:ListItem>
            <asp:ListItem Value="Mersin">Mersin</asp:ListItem>
            <asp:ListItem Value="İstanbul">İstanbul</asp:ListItem>
            <asp:ListItem Value="İzmir">İzmir</asp:ListItem>
            <asp:ListItem Value="Kars">Kars</asp:ListItem>
            <asp:ListItem Value="Kastamonu">Kastamonu</asp:ListItem>
            <asp:ListItem Value="Kayseri">Kayseri</asp:ListItem>
            <asp:ListItem Value="Kırklareli">Kırklareli</asp:ListItem>
            <asp:ListItem Value="Kırşehir">Kırşehir</asp:ListItem>
            <asp:ListItem Value="Kocaeli">Kocaeli</asp:ListItem>
            <asp:ListItem Value="Konya">Konya</asp:ListItem>
            <asp:ListItem Value="Kütahya">Kütahya</asp:ListItem>
            <asp:ListItem Value="Malatya">Malatya</asp:ListItem>
            <asp:ListItem Value="Manisa">Manisa</asp:ListItem>
            <asp:ListItem Value="Kahramanmaraş">Kahramanmaraş</asp:ListItem>
            <asp:ListItem Value="Mardin">Mardin</asp:ListItem>
            <asp:ListItem Value="Muğla">Muğla</asp:ListItem>
            <asp:ListItem Value="Muş">Muş</asp:ListItem>
            <asp:ListItem Value="Nevşehir">Nevşehir</asp:ListItem>
            <asp:ListItem Value="Niğde">Niğde</asp:ListItem>
            <asp:ListItem Value="Ordu">Ordu</asp:ListItem>
            <asp:ListItem Value="Rize">Rize</asp:ListItem>
            <asp:ListItem Value="Sakarya">Sakarya</asp:ListItem>
            <asp:ListItem Value="Samsun">Samsun</asp:ListItem>
            <asp:ListItem Value="Siirt">Siirt</asp:ListItem>
            <asp:ListItem Value="Sinop">Sinop</asp:ListItem>
            <asp:ListItem Value="Sivas">Sivas</asp:ListItem>
            <asp:ListItem Value="Tekirdağ">Tekirdağ</asp:ListItem>
            <asp:ListItem Value="Tokat">Tokat</asp:ListItem>
            <asp:ListItem Value="Trabzon">Trabzon</asp:ListItem>
            <asp:ListItem Value="Tunceli">Tunceli</asp:ListItem>
            <asp:ListItem Value="Şanlıurfa">Şanlıurfa</asp:ListItem>
            <asp:ListItem Value="Uşak">Uşak</asp:ListItem>
            <asp:ListItem Value="Van">Van</asp:ListItem>
            <asp:ListItem Value="Yozgat">Yozgat</asp:ListItem>
            <asp:ListItem Value="Zonguldak">Zonguldak</asp:ListItem>
            <asp:ListItem Value="Aksaray">Aksaray</asp:ListItem>
            <asp:ListItem Value="Bayburt">Bayburt</asp:ListItem>
            <asp:ListItem Value="Karaman">Karaman</asp:ListItem>
            <asp:ListItem Value="Kırıkkale">Kırıkkale</asp:ListItem>
            <asp:ListItem Value="Batman">Batman</asp:ListItem>
            <asp:ListItem Value="Şırnak">Şırnak</asp:ListItem>
            <asp:ListItem Value="Bartın">Bartın</asp:ListItem>
            <asp:ListItem Value="Ardahan">Ardahan</asp:ListItem>
            <asp:ListItem Value="Iğdır">Iğdır</asp:ListItem>
            <asp:ListItem Value="Yalova">Yalova</asp:ListItem>
            <asp:ListItem Value="Karabük">Karabük</asp:ListItem>
            <asp:ListItem Value="Kilis">Kilis</asp:ListItem>
            <asp:ListItem Value="Osmaniye">Osmaniye</asp:ListItem>
            <asp:ListItem Value="Düzce">Düzce</asp:ListItem>
                     </asp:DropDownList>

                  
                  <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;&nbsp;&nbsp; Bitiş Tarihi:</span>
                       <asp:TextBox ID="dateTimePicker2" CssClass="dateTimePicker2" runat="server" TextMode="Date" />

                  <br/><br>&nbsp;&nbsp;<span >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Staj Konusu:</span>
                       <asp:Textbox ID="stajKonusuTB" CssClass="stajKonusuTB" runat="server" AutoCompleteType="Disabled" />

                  
                           </div>
                  <div style="font-size: 18px; margin-left:10px; margin-top:125px; width:430px;">*Staj Tamamlanması için yapılması gerek gün sayısı: 60</div>

                  <div class="butonlar" style="font-size: 18px; margin-left:495px; margin-top:-120px;">

                       <asp:Button ID="tamamlaBTN" Text="Tamamla" CssClass="tamamlaBTN" runat="server" OnClick="tamamlaBTN_Click" />

                       <asp:Button ID="kayitsilBTN" Text="Kayıt Sil" CssClass="kayitsilBTN" runat="server" OnClick="kayitsilBTN_Click" />

                       <br><asp:Button ID="ListeTemizleButon" Text="Liste Temizle" CssClass="ListeTemizleButon" runat="server" OnClick="ListeTemizleButon_Click"/>

                       <asp:Button ID="YeniEkleBTN" Text="Yeni Kayıt" CssClass="YeniEkleBTN" runat="server" OnClick="YeniEkleBTN_Click"/>

                      </div>
                 </div>
             <div class="altbölüm" style="font-size: 18px; ">

                  &nbsp;&nbsp;<div style="font-size:20px;margin-left:10px; font-weight: bold; font-style: italic; "> Liste</div> 
                  <br><asp:ListBox  ID="listBox1" CssClass="listBox1" runat="server" Height="335px" Width="1200px"  Font-Size="Medium" Rows="10"  BackColor="Silver"  />
                

                 </div>
            <div class="tanıtım" style="font-size: 18px; font-style: italic">
                 
                Bu tasarım Emre Öksüz ve Merve Çoşkun tarafından yapılmıştır. © 2018

            </div>
        </div>
       
    </form>
</body>
</html>
