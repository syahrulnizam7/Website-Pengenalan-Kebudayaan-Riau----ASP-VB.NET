<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MainAdmin.Master" CodeBehind="dataKabupaten.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.dataKabupaten" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <!-- Main Content -->
            <div id="content">
                
               <form runat="server">
               
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Data kabupaten</h1>
                        <asp:Button ID="Button1" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" runat="server" Text="Tambah data" />
                    </div>

                    <!-- DataTales Example -->
                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Form Input Data</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="w-100" >
                                    <tr>
                                        <td>Nama Kabupaten</td>
                                        <td>
                                            <asp:TextBox ID="txtNamaKab" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Deskripsi Kabupaten</td>
                                        <td>
                                            <asp:TextBox ID="txtdeskripsiKab" runat="server" TextMode="MultiLine" Style="height: 170px; width: 540px;"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Tari daerah</td>
                                        <td>
                                            <asp:TextBox ID="txtTari" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Lagu daerah</td>
                                        <td>
                                            <asp:TextBox ID="txtLagu" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Tradisi daerah</td>
                                        <td>
                                            <asp:TextBox ID="txtTradisi" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Kuliner daerah</td>
                                        <td>
                                            <asp:TextBox ID="txtKuliner" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>File Gambar</td>
                                        <td>
                                            <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                                        <td> <asp:Button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" ID="Button2" runat="server" Text="Kirim" /></td>
                                    </tr>
                                </table>



                            </div>
                        </div>
                    </div>
                    </asp:Panel>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tabel kabupaten</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                        <asp:GridView ID="GridView1" class="table table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="nama_kabupaten" HeaderText="nama_kabupaten" SortExpression="nama_kabupaten" />
                                                <asp:BoundField DataField="deskripsi_kabupaten" HeaderText="deskripsi_kabupaten" SortExpression="deskripsi_kabupaten" />
                                                <asp:BoundField DataField="tarian" HeaderText="tarian" SortExpression="tarian" />
                                                <asp:BoundField DataField="tradisi" HeaderText="tradisi" SortExpression="tradisi" />
                                                <asp:BoundField DataField="lagu" HeaderText="lagu" SortExpression="lagu" />
                                                <asp:BoundField DataField="kuliner" HeaderText="kuliner" SortExpression="kuliner" />
                                                <asp:TemplateField HeaderText="Logo Kabupaten">
                                                    <ItemTemplate>
                                                        <asp:Image Style="width: 200px;" ID="Image" runat="server" ImageUrl='<%# Eval("ID", "HandlerKabupaten.ashx?ID={0}")%>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField HeaderText="Aksi" ShowDeleteButton="True" ShowEditButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" SelectCommand="SELECT * FROM [kabupaten]" DeleteCommand="DELETE FROM [kabupaten] WHERE [Id] = @Id" InsertCommand="INSERT INTO [kabupaten] ([nama_kabupaten], [deskripsi_kabupaten], [Image], [tarian], [tradisi], [lagu], [kuliner]) VALUES (@nama_kabupaten, @deskripsi_kabupaten, @Image, @tarian, @tradisi, @lagu, @kuliner)" UpdateCommand="UPDATE kabupaten SET nama_kabupaten = @nama_kabupaten, deskripsi_kabupaten = @deskripsi_kabupaten, tarian = @tarian, tradisi = @tradisi, lagu = @lagu, kuliner = @kuliner WHERE (Id = @Id)">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="txtNamaKab" Name="nama_kabupaten" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txtdeskripsiKab" Name="deskripsi_kabupaten" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="FileUpload1" Name="Image" PropertyName="FileBytes" Type="Object" />
                                                <asp:ControlParameter ControlID="txtTari" Name="tarian" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txtTradisi" Name="tradisi" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txtLagu" Name="lagu" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txtKuliner" Name="kuliner" PropertyName="Text" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="nama_kabupaten" Type="String" />
                                                <asp:Parameter Name="deskripsi_kabupaten" Type="String" />
                                                <asp:Parameter Name="Image" Type="Object" />
                                                <asp:Parameter Name="tarian" Type="String" />
                                                <asp:Parameter Name="tradisi" Type="String" />
                                                <asp:Parameter Name="lagu" Type="String" />
                                                <asp:Parameter Name="kuliner" Type="String" />
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                       
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
                   
               </form>
            </div>
            <!-- End of Main Content -->
    </asp:Content>
