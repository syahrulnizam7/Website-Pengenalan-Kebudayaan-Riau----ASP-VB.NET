<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MainAdmin.Master" CodeBehind="datapengguna.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.datapengguna" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <!-- Main Content -->
            <div id="content">

               
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Data Pengguna</h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tabel pengguna</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                    <form runat="server">
                                        <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
                                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="tgl_lahir" HeaderText="tgl_lahir" SortExpression="tgl_lahir" />
                                                <asp:BoundField DataField="umur" HeaderText="umur" SortExpression="umur" />
                                                <asp:TemplateField HeaderText="Poto Profil">
                                                    <ItemTemplate>
                                                        <asp:Image Style="width: 200px;" ID="Image" runat="server" ImageUrl='<%# Eval("ID", "HandlerDataPengguna.ashx?ID={0}")%>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ShowDeleteButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" DeleteCommand="DELETE FROM [pengguna] WHERE [Id] = @Id" InsertCommand="INSERT INTO [pengguna] ([nama], [email], [password], [tgl_lahir], [Image], [umur]) VALUES (@nama, @email, @password, @tgl_lahir, @Image, @umur)" SelectCommand="SELECT * FROM [pengguna]" UpdateCommand="UPDATE [pengguna] SET [nama] = @nama, [email] = @email, [password] = @password, [tgl_lahir] = @tgl_lahir, [Image] = @Image, [umur] = @umur WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="nama" Type="String" />
                                                <asp:Parameter Name="email" Type="String" />
                                                <asp:Parameter Name="password" Type="String" />
                                                <asp:Parameter Name="tgl_lahir" Type="String" />
                                                <asp:Parameter Name="Image" Type="Object" />
                                                <asp:Parameter Name="umur" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="nama" Type="String" />
                                                <asp:Parameter Name="email" Type="String" />
                                                <asp:Parameter Name="password" Type="String" />
                                                <asp:Parameter Name="tgl_lahir" Type="String" />
                                                <asp:Parameter Name="Image" Type="Object" />
                                                <asp:Parameter Name="umur" Type="Int32" />
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