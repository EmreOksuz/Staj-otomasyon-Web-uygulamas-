<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StajDeğerlendirme.aspx.cs" Inherits="StajDeğerlendirme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Staj Değerlendirme</title>
        <link href="/Stil.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            width: 273px;
        }
        .auto-style3 {
            width: 397px;
        }
        .label22 {}
        .SDBT {}
    </style>

</head>
<body>
   <form id="form3" runat="server">
        <div id="wrapper">

            <header>
                <div id="logo">

                    <img src="ktulogo_tr.png" width="135" height="135"  />

                    <div id="yazı3">

                        &nbsp;&nbsp;&nbsp;

                        Staj Değerlendirme Sayfası 
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
            <div class="SDortabölüm1" style=" font-size: 18px; ">

                 <div style="margin-left:50px; width: 456px;" > 

                         <br></br>&nbsp;&nbsp;<span  style="margin-left:80px; " >Öğrenci Numarası:</span>
                       <asp:TextBox ID="SDON" CssClass="SDON" runat="server" AutoCompleteType="Disabled" Height="23px" Width="100px" />

                      <br></br>&nbsp;&nbsp;<span  style="margin-left:90px;" >Yaptığı staj günü:</span>
                       <asp:TextBox ID="SDBT" CssClass="SDBT" runat="server" AutoCompleteType="Disabled"  Height="23px" Width="100px" />

                    <br></br>&nbsp;&nbsp;<span style="margin-left:95px;">Devam Durumu:</span>
                       <asp:TextBox ID="ddTB" CssClass="ddTB" runat="server" AutoCompleteType="Disabled" />

                        <br></br>&nbsp;&nbsp;<span style="margin-left:90px;">Çaba ve Çalışma:</span>
                       <asp:TextBox ID="ccTB" CssClass="ccTB" runat="server" AutoCompleteType="Disabled" />

                        <br></br>&nbsp;&nbsp;<span style="margin-left:75px;">İşi vaktinde yapma:</span>
                       <asp:TextBox ID="ivyTB" CssClass="ivyTB" runat="server" AutoCompleteType="Disabled" />

                      <br></br>&nbsp;&nbsp;<span style="margin-left:55px;">Amire Karşı Davranış:</span>
                       <asp:TextBox ID="akdTB" CssClass="akdTB" runat="server" AutoCompleteType="Disabled" />

                       <br></br>&nbsp;&nbsp;<span >İş arkadaşlarına karşı Tutumu:</span>
                       <asp:TextBox ID="iaktTB" CssClass="iaktTB" runat="server" AutoCompleteType="Disabled" />

                  

                     </div>
                 <div class="auto-style3" style="margin-left:550px; " >
                       <br></br>&nbsp;&nbsp;<span style="margin-left:20px;">Proje:</span>
                       <asp:TextBox ID="projeTB" CssClass="projeTB" runat="server" AutoCompleteType="Disabled" />
               
                 
                       <br></br>&nbsp;&nbsp;<span style="margin-left:12px;">Düzen:</span>
                       <asp:TextBox ID="düzenTB" CssClass="düzenTB" runat="server" AutoCompleteType="Disabled" />
               
                      <br></br>&nbsp;&nbsp;<span style="margin-left:8px;">Sunum:</span>
                       <asp:TextBox ID="sunumTB" CssClass="sunumTB" runat="server" AutoCompleteType="Disabled" />
            
                    <br></br>&nbsp;&nbsp;<span style="margin-left:17px;">İçerik:</span>
                       <asp:TextBox ID="icerikTB" CssClass="icerikTB" runat="server" AutoCompleteType="Disabled" />
                 
                   <br></br>&nbsp;&nbsp;<span >Mülakat:</span>
                       <asp:TextBox ID="mülakatTB" CssClass="mülakatTB" runat="server" AutoCompleteType="Disabled" />
              
                     
                    <br/> <br/><br>&nbsp;&nbsp;<span>Başarı:</span>
                    <asp:Label ID="label22" CssClass="label22" runat="server" />
                   &nbsp;&nbsp;<span> </span>
                    <asp:Label ID="basarıLabel" CssClass="basarıLabel" runat="server"  />
                    <br/> <br/><br>&nbsp;&nbsp;<span>Sonuç:</span>
                    <asp:Label ID="label12" CssClass="label12" runat="server"  />
                    &nbsp;&nbsp;<span> </span>
                    <asp:Label ID="sonucLBL" CssClass="sonucLBL" runat="server"  />
  

                        <span style="margin-left:-340px; margin-bottom:50px;">
                         <asp:Button ID="Kaydet" Text="Kaydet " CssClass="Kaydet" runat="server" Width="99px" OnClick="Kaydet_Click" />
                            </span>


                   </div> 


              
                 
              <div class="tanıtım"  style="margin-top:200px; font-size: 18px; font-style: italic " >
                 
                Bu tasarım Emre Öksüz ve Merve Çoşkun tarafından yapılmıştır. © 2018

            </div>
           


    </div>





    </form>
  
</body>
</html>
