<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="layanan.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.layanan" %>
<script runat="server">
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            SqlDataSource1.Insert()
            Response.Write("Berhasil di input")
        Else
            Response.Write("gagal di input")
        End If
    End Sub
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inner-banner">
  </div>

    <section class="w3l-breadcrumb">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="beranda.aspx">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Layanan</li>
      </ul>
    </div>
  </section>

    <section class="w3l-contact-2 py-5" id="contact">
    <div class="container py-lg-5 py-md-4 py-2">
      <div class="header-section text-center mx-0 mb-md-5 mb-4">
        <h6 class="title-subhny">Jika ada Kebudayaan Riau yang belum di daftarkan di Budaya Riau</h6>
        <h3 class="title-w3l mt-2">Hubungi Kami</h3>
      </div>
      <div class="contact-grids d-grid">
        <div class="contact-left-img">
          <img src="assets/images/budayaRiau2.png" class="img-fluid radius-image" alt="">
  
        </div>
        <div class="contact-right">
            <form  class="signin-form">
                <div class="input-grids">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNama" ErrorMessage="Masukkan Nama Anda!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNama" runat="server" placeholder="Nama Anda*"></asp:TextBox>


                    <asp:Label ID="Label1" runat="server" Text="Jenis Usulan"></asp:Label>
                    <asp:DropDownList ID="ddljenisUsulan" runat="server" DataSourceID="usulSource"  DataTextField="keterangan" DataValueField="keterangan"></asp:DropDownList><br />
                    <asp:SqlDataSource ID="usulSource" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" SelectCommand="SELECT * FROM [jenisUsul]"></asp:SqlDataSource>
                </div>
                <div class="form-input">

                    <asp:TextBox ID="txtIsi" runat="server" placeholder="Masukkan Pesan Anda*" TextMode="MultiLine" Style="height: 170px; width: 540px;"></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Usulkan" Width="540px" BackColor="#6699FF" ForeColor="White" />
                </div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" DeleteCommand="DELETE FROM [usul] WHERE [Id] = @Id" InsertCommand="INSERT INTO [usul] ([nama], [jenisUsul], [isiUsulan]) VALUES (@nama, @jenisUsul, @isiUsulan)" SelectCommand="SELECT * FROM [usul]" UpdateCommand="UPDATE [usul] SET [nama] = @nama, [jenisUsul] = @jenisUsul, [isiUsulan] = @isiUsulan WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtNama" Name="nama" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ddljenisUsulan" Name="jenisUsul" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="txtIsi" Name="isiUsulan" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nama" Type="String" />
                        <asp:Parameter Name="jenisUsul" Type="String" />
                        <asp:Parameter Name="isiUsulan" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <div class="form-buttonhny text-lg-right">
                </div>
            </form>
        </div>
      </div>
        <div class="header-section text-center mx-0 mb-md-5 mb-4">
        <h3 class="title-w3l mt-2">Alamat Kami</h3>
            </div>
      <div class="map-iframe mt-5 mb-lg-5 pb-lg-4">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15958.483039470384!2d101.4255041!3d0.5701812!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x65a24264fec306bb!2sPoliteknik%20Caltex%20Riau!5e0!3m2!1sid!2sid!4v1668519282091!5m2!1sid!2sid" width="100%" height="400" frameborder="0" style="border: 0px;" allowfullscreen=""></iframe>
      </div>
    </div>
  </section>


</asp:Content>
