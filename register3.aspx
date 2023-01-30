<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register3.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.register3" %>


<!DOCTYPE html>
<link rel="shortcut icon" type="image/x-icon" href="assets/images/logo.png" />

<html>
<head>
<title>Register</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Slide Login Form template Responsive, Login form web template, Flat Pricing tables, Flat Drop downs Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
		 }

         document.querySelector(".third").addEventListener('click', function () {
             Swal.fire("Our First Alert", "With some body text and success icon!", "success");
		 });

     </script>

	<!-- Custom Theme files -->
	<link href="assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Custom Theme files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->

    <style>
    	button {
    		background: cornflowerblue;
    		color: white;
    		border: none;
    		padding: 10px;
    		border-radius: 8px;
    		font-family: 'Lato';
    		margin: 5px;
    		text-transform: uppercase;
    		cursor: pointer;
    		outline: none;
    	}

    		button:hover {
    			background: orange;
    		}
    </style>

</head>
<body>

<!-- main -->
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1><asp:Label ID="Label1" runat="server" Text="Silahkan Daftar Disini" ></asp:Label></h1>
		<div class="header-main">
			<div class="main-icon">
				<asp:Image ID="Image1" runat="server" ImageUrl="~/assets/images/budayaRiau.png"  />
			</div>&nbsp;<!-- form daftar --><div class="header-left-bottom">
				<form runat="server">
					<div class="icon1">
						<span class="fa fa-user"></span>
						<asp:Label ID="Label2" runat="server" Text="Foto Profil"></asp:Label><br />
						<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" AllowCustomPaging="True" AllowPaging="True" PageSize="1">
							 <Columns>
								<asp:TemplateField >
                                                    <ItemTemplate>
                                                        <asp:Image Style="width: 278px; height:278px "  HorizontalAlign="Center" ID="Image" runat="server" ImageUrl='<%# Eval("ID", "HandlerRegister.ashx?ID={0}")%>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
							 </Columns>
                        </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" SelectCommand="SELECT * FROM [pengguna]"></asp:SqlDataSource>
						<center><asp:Label ID="Label3" runat="server" Text="Foto Berhasil Diunggah!" Font-Bold="False" ForeColor="Red"></asp:Label></center>
						
					</div>
					
					
					<div class="bottom">
						
						<center>
                            <asp:Button  ID="Button1" runat="server" Text="Simpan dan ke halaman login"  OnClick="Button1_Click" Height="38px" CssClass="third" style="color: #FFFFFF; background-color: #3366FF" Width="311px" /></center>
					</div>
					
				</form>
			</div>
			
		</div>
		
		<!-- copyright -->
		<div class="copyright">
			
		</div>
		<!-- //copyright --> 
	</div>
</div>	
<!-- //main -->

</body>
</html>
