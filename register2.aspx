<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register2.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.register2" %>


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
				<asp:Image ID="Image1" runat="server"  ImageUrl="~/assets/images/budayaRiau.png" />
			</div>&nbsp;<!-- form daftar --><div class="header-left-bottom">
				<form runat="server">
					<div class="icon1">
						<span class="fa fa-user"></span>
						<asp:Label ID="Label2" runat="server" Text="Foto Profil"></asp:Label><br />
						<asp:Image ID="Image2" runat="server" ImageUrl="~/assets/images/default-profile-icon-24.jpg"/>
						<asp:FileUpload ID="FileUpload1" runat="server" />
						<br />
						
					    <br />
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" DeleteCommand="DELETE FROM [pengguna] WHERE [Id] = @Id" InsertCommand="INSERT INTO pengguna(potoprofil) VALUES (@potoprofil)" SelectCommand="SELECT * FROM [pengguna]" UpdateCommand="UPDATE pengguna SET Image = @Image WHERE (Id = @Id)">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="FileUpload1" Name="potoprofil" PropertyName="FileBytes" Type="Object" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="FileUpload1" Name="nama" PropertyName="FileBytes" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="tgl_lahir" Type="String" />
                                <asp:Parameter Name="potoprofil" Type="Object" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
					</div>
					
					
					<div class="bottom">
						
						<center>
                            <asp:Button  ID="Button1" runat="server" Text="Register"  OnClick="Button1_Click" Height="38px" CssClass="third" style="color: #FFFFFF; background-color: #3366FF" Width="311px" /></center>
					</div>
					<div class="links">
						<p><a href="#"></p>
						<p class="right"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Kembali ke daftar</asp:HyperLink></p>
						<div class="clear">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </div>
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
