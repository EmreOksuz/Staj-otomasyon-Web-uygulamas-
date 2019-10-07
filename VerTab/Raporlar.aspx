<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Raporlar.aspx.cs" Inherits="Raporlar" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>
  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
          <link href="/Stil.css" rel="stylesheet" />
    
    <title>Staj Raporları Sayfası</title>
    <style type="text/css">
        .auto-style5 {}
        </style>
</head>
<body>

     <form id="form4" runat="server">
                                

        <div id="wrapper">

            <header>
                <div id="logo">

                    <img src="ktulogo_tr.png" width="135" height="135"  />

                    <div id="yazı2" >

                        Staj Raporları Sayfası 
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

              <div class="Rortabölüm1" style=" font-size: 18px; ">

                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
               
               
                    <br/><asp:Label ID="Label1" runat="server" Text="Tüm Liste"></asp:Label>
                      
                 <br/> <rsweb:ReportViewer ID="ReportViewer1" runat="server" CssClass="auto-style5" Font-Names="Verdana" Font-Size="8pt" Height="572px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1196px">
                      <localreport reportpath="Report.rdlc">
                          <datasources>
                              <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                          </datasources>
                      </localreport>
                  </rsweb:ReportViewer>
                  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DataSetTableAdapters.View_OgrTableAdapter"></asp:ObjectDataSource>

                
                  
                       
                 

                 <br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span  style="margin-left:80px; " >İl bazında staj başarı oranı:</span>
                    <asp:DropDownList ID="Sehirler"  CssClass="Sehirler" runat="server" Height="23px" Width="100px"> 
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
                       &nbsp;<asp:label ID="sbo" CssClass="sbo" runat="server" AutoCompleteType="Disabled" Height="23px" Width="100px" />

                    <br/><br> <asp:Button ID="göster" Text="Göster" CssClass="göster" runat="server" OnClick="göster_Click" />
                   

                      <br></br>&nbsp;&nbsp;<span  style="margin-left:80px; " >Konu bazında staj başarı oranı:</span>
                    <asp:DropDownList ID="Konu"  CssClass="Konu" runat="server" Height="23px" Width="100px" DataSourceID="SqlDataSource1" DataTextField="StajKonusu" DataValueField="StajKonusu"> 
                                 
                     </asp:DropDownList>
                       <asp:label ID="KonuL" CssClass="KonuL" runat="server" AutoCompleteType="Disabled" Height="23px" Width="100px" />

                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STAJConnectionString %>" SelectCommand="SELECT DISTINCT [StajKonusu] FROM [Ogrenci]"></asp:SqlDataSource>
                         <br></br><asp:Button ID="Button1" Text="Göster" CssClass="Button1" runat="server" OnClick="Button1_Click" />
                  




              
                 </div>
              <div class="tanıtım" style="font-size: 18px; font-style: italic">
                 
                Bu tasarım Emre Öksüz ve Merve Çoşkun tarafından yapılmıştır. © 2018

            </div>
           


    </div>
    </form>
</body>
</html>
