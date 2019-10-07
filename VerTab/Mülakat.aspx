<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mülakat.aspx.cs" Inherits="Mülakat" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/Stil.css" rel="stylesheet" />
    <title>Mülakat Sayfası</title>
    <style type="text/css">
        .listBox1 {}
        .auto-style4 {}
    </style>
</head>
<body>
    <form id="form6" runat="server">
        <div id="wrapper">

            <header>
                <div id="logo">

                    <img src="ktulogo_tr.png" width="135" height="135"  />

                    <div id="yazı4" >

                        Staj Mülakat Sayfası
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

              <div class="Mortabölüm1" style=" font-size: 18px; ">

             
                 
                  &nbsp;&nbsp;<div style="font-size:20px;margin-left:10px; font-weight: bold; font-style: italic; overflow-x:auto"> Liste</div> 
                  <br><asp:ListBox  ID="listBox1" CssClass="listBox1" runat="server" Height="240px" Width="1200px"  Font-Size="Medium" Rows="10" TabIndex="2" BackColor="Silver"  />
              
                    <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;<span style="width:100px;">Öğrenci Numarası:</span>
                  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Numara" DataValueField="Numara" Width="100px" Height="23px" > <asp:ListItem Enabled="true" Text="--" Value="-1"></asp:ListItem></asp:DropDownList>

                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STAJConnectionString %>" SelectCommand="SELECT DISTINCT [Numara] FROM [Ogrenci] WHERE Sonuc='TAMAMLANMADI'"></asp:SqlDataSource>


                  <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;&nbsp; Mülakat Tarihi:</span>
                       <asp:TextBox ID="dateTimePicker3" CssClass="dateTimePicker2" runat="server" TextMode="DateTimeLocal" Width="175px" Height="23px"/>
          
                    <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;<span style="width:100px;">Staj Komisyonu 1:</span>
                  <asp:DropDownList ID="DropDownList2" runat="server"  Width="100px" Height="23px" > <asp:ListItem Enabled="true" Text="--" Value="-1"></asp:ListItem></asp:DropDownList>

                    <br/><br>&nbsp;&nbsp;&nbsp;&nbsp;<span style="width:100px;">Staj Komisyonu 2:</span>
                  <asp:DropDownList ID="DropDownList3" runat="server" Width="100px" Height="23px" > <asp:ListItem Enabled="true" Text="--" Value="-1"></asp:ListItem></asp:DropDownList>
                   
                    <br/><br ><asp:Button ID="MRaporBTN" Text="Kaydet" CssClass="MRaporBTN" runat="server" onClick="MRaporBTN_Click" />


                <br/><br >  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <rsweb:ReportViewer ID="ReportViewer1" runat="server" CssClass="auto-style4" Font-Names="Verdana" Font-Size="8pt" Height="353px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1198px">
                      <LocalReport ReportPath="ReportMülakat.rdlc">
                          <DataSources>
                              <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet2" />
                          </DataSources>
                      </LocalReport>
                  </rsweb:ReportViewer>

              
                  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DataSetMülakatTableAdapters.MülakatTableAdapter"></asp:ObjectDataSource>

              
                 </div>
              <div class="tanıtım" style="font-size: 18px; font-style: italic">
                 
                Bu tasarım Emre Öksüz ve Merve Çoşkun tarafından yapılmıştır. © 2018

            </div>
           


    </div>
    </form>
</body>
</html>
