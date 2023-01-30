<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.login" %>

<!DOCTYPE html>
<link rel="shortcut icon" type="image/x-icon" href="assets/images/logoweb.png" />

<html>
<head>
<title>Login</title>

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
     </script>

	<!-- Custom Theme files -->

	<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/css/style.css" rel="stylesheet" />
	<!-- //Custom Theme files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->

</head>
<body>

<!-- main -->
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1><asp:Label ID="Label1" runat="server" Text="Selamat Datang di Budaya Riau" ></asp:Label></h1>
		<div class="header-main">
			<div class="main-icon">
				<asp:Image ID="Image1" runat="server" ImageUrl="~/assets/images/budayaRiau.png" />
			</div>
			<div class="header-left-bottom">
				<form runat="server">
					<div class="icon1">
						<span class="fa fa-user"></span><br />
						<asp:TextBox ID="TextBox1" runat="server" Width="270px" TextMode="Email" placeholder="E-mail"></asp:TextBox>
					    <br />
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Masukkan alamat email anda!" ForeColor="Red"></asp:RequiredFieldValidator>
						<br />
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red"
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic"
                    ErrorMessage = "Format email salah!"/>				
					</div>
					<div class="icon1">
						<span class="fa fa-lock"></span><br />
						<asp:TextBox ID="TextBox2" runat="server" Width="270px" TextMode="Password" placeholder="Password"></asp:TextBox>
						<br />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Masukkan password anda!" ForeColor="Red"></asp:RequiredFieldValidator>
					    <br />
                        
					</div>
					<div class="login-check">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i> Simpan info login</label>
					</div>
					<div class="bottom">
						
						<center><asp:Button  ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Height="38px" style="color: #FFFFFF; background-color: #3366FF" Width="311px" /></center>
					</div>
					<div class="links">
						<p><a href="#">Lupa Password</a></p>
						<p class="right"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Belum punya akun? Daftar</asp:HyperLink></p>
						<div class="clear"></div>
					</div>
				</form>
			</div>
			<div class="social">
				<ul>
					<li>Login lainnya : </li>
					<li><a href="#" class="facebook"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#" class="twitter" ><span class="fa fa-twitter"></span></a></li>
					<li><a href="@Url.Action("SignIn", new{type="Google"}) class="google"><span class="fa fa-google-plus"></span></a></li>
				</ul>
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
