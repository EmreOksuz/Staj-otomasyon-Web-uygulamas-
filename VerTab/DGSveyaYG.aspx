<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DGSveyaYG.aspx.cs" Inherits="DGSveyaYG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DGS ve Yatay Geçiş Sayfası</title>

    <link href="/Stil.css" rel="stylesheet" />
    
</head>
<body>

        <form id="form2" runat="server">
        <div id="wrapper">

            <header>
                <div id="logo">

                    <img src="ktulogo_tr.png" width="135" height="135"  />

                    <div id="yazı">

                        &nbsp;&nbsp;&nbsp;

                        Dikey Geçiş Sınavı ve Yatay Geçiş Sayfası 
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
                       <a href="DGSveyaYG.aspx">DGS veya YG</a> 
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
                  </header2>
              <div class="DGSortabölüm1" style=" font-size: 18px; ">
 <br/> <br/>
                  <br/><br>&nbsp;&nbsp;<span style="margin-left:67px;">Okul Numarası:</span>
                       <asp:TextBox ID="ÖnuTB" CssClass="ÖnuTB" runat="server" AutoCompleteType="Disabled" />

                    <br/><br>&nbsp;&nbsp;<span style="margin-left:155px;">Ad:</span>
                       <asp:TextBox ID="ÖadTB" CssClass="ÖadTB" runat="server" AutoCompleteType="Disabled" />

                   <br/><br>&nbsp;&nbsp;<span style="margin-left:131px;">Soyad:</span>
                       <asp:TextBox ID="ÖsoyadTB" CssClass="ÖsoyadTB" runat="server" AutoCompleteType="Disabled"/>

                  <br/><br>&nbsp;&nbsp;<span style="margin-left:36px;">Önceki Okulun Adı:</span>
                       <asp:TextBox ID="eoaTB" CssClass="eoaTB" runat="server" AutoCompleteType="Disabled" />

                   <br/><br>&nbsp;&nbsp;<span style="margin-left:50px;">Staj Ettiği Kurum:</span>
                       <asp:TextBox ID="sekTB" CssClass="sekTB" runat="server" AutoCompleteType="Disabled"/>

                    <br/><br>&nbsp;&nbsp;<span style="margin-left:38px;">Yapılan Gün Sayısı:</span>
                       <asp:TextBox ID="ysgTB" CssClass="ysgTB" runat="server" AutoCompleteType="Disabled"/>

                   <br/><br>&nbsp;&nbsp;<span>Kabul Edilen Gün Sayısı:</span>
                       <asp:TextBox ID="kegsTB" CssClass="kegsTB" runat="server" AutoCompleteType="Disabled"/>

                   <br/><br>&nbsp;&nbsp;<span style="margin-left:86px;">Staj Dosyası:</span>
                       

        

             
                  <asp:FileUpload ID="FileUpload1" runat="server"  accept="application/pdf,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.ms-excel"/>


              
                     <br/> <br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="DGKaydetBTN" Text="Kaydet" CssClass="DGKaydetBTN" runat="server" onClick="DGKaydetBTN_Click"/>


              
                  
                       

              
                 </div>
              <div class="tanıtım" style="font-size: 18px; font-style: italic">
                 
                Bu tasarım Emre Öksüz ve Merve Çoşkun tarafından yapılmıştır. © 2018

            </div>
           


    </div>
    </form>
</body>
</html>
