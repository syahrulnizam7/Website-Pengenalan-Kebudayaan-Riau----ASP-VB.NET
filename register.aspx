<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="Kel3_BudayaRiau_3SIA.register" %>


<!DOCTYPE html>
<link rel="shortcut icon" type="image/x-icon" href="assets/images/logo.png" />
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Not Request.Form("Button1") Is Nothing Then
            SqlDataSource1.Insert()
            Label3.Text = "Data berhasil di input"
            Response.Redirect("register2.aspx")
        Else
            Label3.Text = "Data belum berhasil di input"
        End If
    End Sub
</script>
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
				<asp:Image ID="Image1" runat="server" ImageUrl="~/assets/images/budayaRiau.png" />
			</div>&nbsp;<!-- form daftar --><div class="header-left-bottom">
				<form runat="server">
					<div class="icon1">
						<span class="fa fa-user"></span><br />
						<asp:TextBox ID="txtNama" runat="server" Width="270px" Type="text" placeholder="Nama"></asp:TextBox>
						<br />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNama" ErrorMessage="Masukkan nama anda!" ForeColor="Red"></asp:RequiredFieldValidator>
					    <br />
					</div>
					<div class="icon1">
						<span class="fa fa-calendar"></span>
						<asp:Label ID="Label2" runat="server" Text="Tanggal lahir"></asp:Label><br />
						<asp:TextBox ID="txtTglLahir" runat="server" Width="270px" TextMode="Date" placeholder="Tanggal Lahir"></asp:TextBox>
					    <br />
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTglLahir" ErrorMessage="Masukkan tanggal lahir anda!" ForeColor="Red"></asp:RequiredFieldValidator>
						<br />
					</div>
					<div class="icon1">
						<span class="fa fa-child"></span>
						<asp:Label ID="Label4" runat="server" Text="Umur"></asp:Label><br />
						<asp:TextBox ID="txtUmur" runat="server" Width="270px"  placeholder="umur"></asp:TextBox>
					    <br />
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUmur" ErrorMessage="Masukkan tanggal lahir anda!" ForeColor="Red"></asp:RequiredFieldValidator>
						<br />
					</div>
					<div class="icon1">
						<span class="fa fa-envelope"></span><br />
						<asp:TextBox ID="txtEmail" runat="server" Width="270px" TextMode="Email" placeholder="E-mail"></asp:TextBox>
					    <br />
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Masukkan alamat email anda!" ForeColor="Red"></asp:RequiredFieldValidator>
						<br />
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ForeColor="Red"
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic"
                    ErrorMessage = "Format email salah!"/>				
					</div>
					<div class="icon1">
						<span class="fa fa-lock"></span><br />
						<asp:TextBox ID="txtPassword" runat="server" Width="270px" TextMode="Password" placeholder="Password"></asp:TextBox>
						<br />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Masukkan password anda!" ForeColor="Red"></asp:RequiredFieldValidator>
					    <br />
                        
					</div>
					<div class="login-check">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i> Keep me logged in<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudayaRiauConnectionString %>" DeleteCommand="DELETE FROM [pengguna] WHERE [Id] = @Id" InsertCommand="INSERT INTO pengguna(nama, email, password, tgl_lahir, umur) VALUES (@nama, @email, @password, @tgl_lahir, @umur)" SelectCommand="SELECT * FROM [pengguna]" UpdateCommand="UPDATE [pengguna] SET [nama] = @nama, [email] = @email, [password] = @password, [tgl_lahir] = @tgl_lahir, [Image] = @Image, [umur] = @umur WHERE [Id] = @Id">
                             <DeleteParameters>
                                 <asp:Parameter Name="Id" Type="Int32" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:ControlParameter ControlID="txtNama" Name="nama" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtTglLahir" Name="tgl_lahir" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtUmur" Name="umur" PropertyName="Text" Type="Int32" />
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
                         </label>
					&nbsp;</div>
					<div class="bottom">
						
						<center>
                            <asp:Button  ID="Button1" runat="server" Text="Register"  OnClick="Button1_Click" Height="38px" CssClass="third" style="color: #FFFFFF; background-color: #3366FF" Width="311px" /></center>
					</div>
					<div class="links">
						<p><a href="#">Forgot Password?</p>
						<p class="right"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Sudah punya akun? login</asp:HyperLink></p>
						<div class="clear">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </div>
					</div>
				</form>
			</div>
			<div class="social">
				<ul>
					<li>or login using : </li>
					<li><a href="#" class="facebook"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#" class="twitter"><span class="fa fa-twitter"></span></a></li>
					<li><a href="#" class="google"><span class="fa fa-google-plus"></span></a></li>
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
