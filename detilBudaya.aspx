<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="detilBudaya.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.laguriau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="inner-banner">
  </div>

    <section class="w3l-breadcrumb">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="beranda.aspx">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span>Detail Kebudayaan</li>
      </ul>
    </div>
  </section>


    <section class="w3l-index3" id="about">
        <div class="row justify-content-center">
            <div class="card-profile-image">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="DetilSource" Width="1000px">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2" colspan="4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="2">
                                    <asp:Image Style="width: 200px;" ID="Image" runat="server" ImageUrl='<%# Eval("ID", "HandlerKabupaten.ashx?ID={0}")%>' />
                                </td>
                                <td class="text-justify" colspan="2">
                                    
                                        <h3 class="title-w3l mt-2"><asp:Label ID="Label7" runat="server" Text='<%# Eval("nama_kabupaten") %>'></asp:Label></h3>
                                    <br />
                                    <h6 class="title-subhny">Deskripsi kabupaten</h6><br />
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("deskripsi_kabupaten") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="4" style="height: 26px"><h6 class="title-subhny">Kebudayaan Daerah</h6></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="width: 78px"><strong>Tarian</strong></td>
                                <td class="auto-style5" style="width: 182px">
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("tarian") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td style="width: 649px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="width: 78px">Tradisi</td>
                                <td class="auto-style5" style="width: 182px">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("tradisi") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td style="width: 649px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7" style="width: 78px">Lagu</td>
                                <td class="auto-style8" style="width: 182px">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("lagu") %>'></asp:Label>
                                </td>
                                <td class="auto-style3"></td>
                                <td class="auto-style3" style="width: 649px"></td>
                            </tr>
                            <tr>
                                <td class="auto-style7" style="width: 78px">Kuliner</td>
                                <td class="auto-style8" style="width: 182px">
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("kuliner") %>'></asp:Label>
                                </td>
                                <td class="auto-style3"></td>
                                <td class="auto-style3" style="width: 649px"></td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>

                <asp:SqlDataSource ID="DetilSource" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" SelectCommand="SELECT * FROM [kabupaten] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </section>


    
</asp:Content>

