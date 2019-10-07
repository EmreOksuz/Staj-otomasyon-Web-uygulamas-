<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StajKomisyonu.aspx.cs" Inherits="StajKomisyonu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/Stil.css" rel="stylesheet" />
    <title>Staj Komisyonu</title>
    <style type="text/css">
        .skLB {}
    </style>
</head>
<body>
     <form id="form4" runat="server">
        <div id="wrapper">

            <header>
                <div id="logo">

                    <img src="ktulogo_tr.png" width="135" height="135"  />

                    <div id="SKyazı">

                        &nbsp;&nbsp;&nbsp;

                        Staj Komisyonu Sayfası 
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
              <div class="SKortabölüm1" style=" font-size: 18px; ">
                
                    <br/><br>&nbsp;&nbsp;&nbsp;<span style="margin-left:103px;">Ad:</span>
                       <asp:TextBox ID="skAdTB" CssClass="skAdTB" runat="server" TextMode="SingleLine" AutoCompleteType="Disabled" Width="150px"/>

                    <br/><br>&nbsp;&nbsp;&nbsp;<span style="margin-left:80px;">Soyad:</span>
                       <asp:TextBox ID="sksoyadTB" CssClass="sksoyadTB" runat="server" TextMode="SingleLine" AutoCompleteType="Disabled" Width="150px"/>

                    <br/><br>&nbsp;&nbsp;&nbsp;<span style="margin-left:79px;">Ünvan:</span>
                       <asp:TextBox ID="skünvanTB" CssClass="skünvanTB" runat="server" TextMode="SingleLine" AutoCompleteType="Disabled" Width="150px"/>

                    <br/><br>&nbsp;&nbsp;&nbsp;<span>Komisyon Grubu:</span>
                       <asp:TextBox ID="skkomisyonTB" CssClass="skkomisyonTB" runat="server" TextMode="SingleLine" AutoCompleteType="Disabled" Width="150px"/>

                     <br/><br><br/><br>&nbsp;&nbsp;&nbsp;<span style="margin-left:50px;"></span>
                    <asp:Button ID="skEkleBTN" Text="Ekle" CssClass="skEkleBTN" runat="server" onClick="skEkleBTN_Click" />

                    <span style="margin-left:20px;"></span>
                    <asp:Button ID="button2" Text="Çıkar" CssClass="button2" runat="server" OnClick="button2_Click"  />

                 
                  <br/><br>&nbsp;&nbsp;&nbsp;<span style="margin-left:50px; "></span>
                    <asp:Button ID="button1" Text="Staj Komisyonları" CssClass="button1" runat="server" Onclick="button1_Click" />

               
                  
                  
                  &nbsp;<div class="tanıtım3" style="font-size: 18px; font-style: italic">
                 
                Bu tasarım Emre Öksüz ve Merve Çoşkun tarafından yapılmıştır. © 2018

            </div>
           


                  &nbsp;&nbsp;&nbsp;<span style="margin-left:50px; "></span>
                  <asp:ListBox ID="skLB" CssClass="skLB" runat="server" Height="259px" Width="650px"  Font-Size="Large" Rows="10" TabIndex="2" BackColor="Silver"  />

                  
                  

    </div>
    </form>
</body>
</html>
