<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MainAdmin.Master" CodeBehind="usulanPengguna.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.usulanPengguna" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Main Content -->
            <div id="content">

               
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Data Usulan Pengguna</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                    <form runat="server">
                                        <asp:GridView ID="GridView1" class="table table-bordered" width="100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" PageSize="5">
                                            <Columns>
                                                <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" />
                                                <asp:BoundField DataField="jenisUsul" HeaderText="Jenis Usulan" SortExpression="jenisUsul" />
                                                <asp:BoundField DataField="isiUsulan" HeaderText="Isi Usulan" SortExpression="isiUsulan" />
                                                <asp:CommandField ShowDeleteButton="True" HeaderText="Aksi" ShowEditButton="True" ShowSelectButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" DeleteCommand="DELETE FROM [usul] WHERE [Id] = @Id" InsertCommand="INSERT INTO [usul] ([nama], [jenisUsul], [isiUsulan]) VALUES (@nama, @jenisUsul, @isiUsulan)" SelectCommand="SELECT * FROM [usul]" UpdateCommand="UPDATE [usul] SET [nama] = @nama, [jenisUsul] = @jenisUsul, [isiUsulan] = @isiUsulan WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="nama" Type="String" />
                                                <asp:Parameter Name="jenisUsul" Type="String" />
                                                <asp:Parameter Name="isiUsulan" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="nama" Type="String" />
                                                <asp:Parameter Name="jenisUsul" Type="String" />
                                                <asp:Parameter Name="isiUsulan" Type="String" />
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </form>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
    </asp:Content>