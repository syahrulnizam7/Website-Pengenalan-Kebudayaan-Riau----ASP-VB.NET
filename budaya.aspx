<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="budaya.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.budaya" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inner-banner">
  </div>

    <section class="w3l-breadcrumb">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="beranda.aspx">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Budaya</li>
      </ul>
    </div>
  </section>

    <section class="w3l-index3" id="services1">
    <div class="midd-w3 py-5">
      <div class="container py-lg-5 py-md-3">
        <div class="row cwp23-content">
          <div class="col-lg-6 cwp23-text pr-lg-5">
            <div class="cwp23-title">
              <span class="title-subhny mb-2">Layanan</span>
              <h3 class="title-w3l mb-5" > Kami Menyediakan Berbagai Macam 
                  Kebudayaan Yang Terdapat Di Provinsi Riau
              </h3>
            </div>
            <div class="cwp23-text-cols">
              <div class="column">
                <span class="fa fa-podcast" aria-hidden="true"></span>
                <a href="#">Budaya</a>
                <p>Tradisi, Adat Istiadat, Musik, <br />
                    Tari dan Lainnya</p>
              </div>
              <div class="column">
                <span class="fa fa-shield" aria-hidden="true"></span>
                <a href="#">Provinsi Riau</a>
                <p>Beriman dan Berbudri <br/> Bersih dan Sejahtera </p>
              </div>
            </div>
          </div>
          <div class="col-6 cwp23-img mt-lg-0 mt-5">
            <img src="assets/images/indo.jpg" alt="" class="radius-image img-fluid">
          </div>
        </div>
      </div>
    </div>
  </section>
    <section class="w3l-stats py-5" id="services2">
    <div class="gallery-inner container py-sm-5">
      <div class="row services-2-grids">
        <div class="col-lg-6 services-2-gd pr-lg-5">
          <p class="" align="justify">Budaya memiliki arti akal budi, secara umum, budaya dapat 
              diartikan sebagai suatu cara hidup yang terdapat pada sekelompok manusia, yang telah 
              berkembang dan diturunkan dari generasi ke generaasi dari sesepuh kelompok tersebut.</p>

            <p class="mt-4" align="justify">Budaya Riau merupakan gabungan dari berbagai macam 
                budaya yang telah lama ada di wilayah tersebut, yang terdiri dari budaya suku-suku 
                asli yang telah ada sejak lama di Riau, serta budaya yang berasal dari daerah lain 
                di Indonesia maupun dari luar negeri. Budaya Riau memiliki ciri khas tersendiri yang 
                tercermin dari adat istiadat, tari-tarian, dan lainnya.</p>

        </div>
        <div class="col-lg-6 services-2-gd mt-lg-0 mt-5">
          <p class="" align="justify"> Contohnya, adat istiadat pernikahan di Riau terdiri dari beberapa tahapan,
              yaitu tahap pengajuan, tahap sosialisasi, tahap persiapan, tahap pelaksanaan, dan tahap penutupan.
              tarian tradisional di Riau juga memiliki ciri khas tersendiri, seperti tari Saman yang merupakan
              tari yang terkenal di Provinsi Riau. Tari Saman merupakan tari yang dibawakan oleh sekelompok 
              orang yang melakukan gerakan-gerakan yang sama secara bersama-sama dengan irama yang sama. 
              Selain itu, budaya Riau juga terkenal dengan kuliner-kuliner tradisionalnya, seperti Asam
              Pedas, sate maranggi, Talam dan lainnya. Kuliner-kuliner ini merupakan makanan khas 
              yang menjadi ciri khas dari Provinsi Riau. Secara keseluruhan, budaya Riau merupakan
              gabungan dari berbagai macam budaya yang saling menyatu dan menjadi bagian dari 
              kebudayaan masyarakat Riau. </p>

        </div>

      </div>
    </div>
  </section>

    <section class="w3l-content-4 py-5" id="features">
    <div class="content-4-main py-lg-5 py-md-4 py-2">
      <div class="container">
        <div class="title-content text-center">
          <h3 class="title-subhny"> List</h3>
          <h3 class="title-w3l mx-lg-5">Kabupaten Di Provinsi Riau</h3>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="0px" CellPadding="20" GridLines="Horizontal" RepeatDirection="Horizontal" RepeatColumns="2" Width="1155px" HorizontalAlign="Justify" CellSpacing="200">
                              <FooterStyle BackColor="White" ForeColor="#333333" />
                              <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                              <ItemStyle BackColor="White" ForeColor="#333333" />
                              <ItemTemplate>
                                  <center>
                                  <asp:Image Style="width: 140px; text-align: center;" ID="Image" runat="server" ImageUrl='<%# Eval("ID", "HandlerKabupaten.ashx?ID={0}")%>' /></center>
                                  <br /><br /><center>
                                      <h6 class="title-subhny"><asp:Label ID="Label7" runat="server" Text='<%# Eval("nama_kabupaten") %>'></asp:Label></h6>
                                  </center>
                                  <br />
                                  <center><asp:Button ID="Button1" runat="server" Text="Lihat Kebudayaan" CommandName="KlikBudaya" CommandArgument='<%# Eval("id") %>'  /></center>
                              </ItemTemplate>
                              <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                          </asp:DataList>
        </div>


          <!--  list kab-->
          <div class="content-info-in row mt-5 pt-lg-5 pb-lg-5">
              <div class="content-left col-lg-6">

                  <asp:Panel ID="Panel1" runat="server">

                      <div class="row content4-right-grids mb-sm-5 mb-4 pb-3">

                          
                      </div>

                  </asp:Panel>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" SelectCommand="SELECT * FROM [kabupaten]"></asp:SqlDataSource>


              </div>
          </div>
          </div>
  </section>
</asp:Content>
