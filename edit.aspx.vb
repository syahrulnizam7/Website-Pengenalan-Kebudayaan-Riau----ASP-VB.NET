Imports System.Data.SqlClient

Public Class edit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim koneksi As New SqlConnection
        Dim xcommand As New SqlCommand
        Dim xR As SqlDataReader

        koneksi.ConnectionString = ("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True")
        koneksi.Open()

        xcommand = New SqlCommand("select * from pengguna where id= (SELECT MAX(id) FROM pengguna)", koneksi)
        xR = xcommand.ExecuteReader()
        xR.Read()

        txtNama.Text = xR("nama")
        txtEmail.Text = xR("email")
        TxtTanggalLahir.Text = xR("tgl_lahir")
        TxtPassword.Text = xR("password")
        txtUmur.Text = xR("umur")

        koneksi.Close()

    End Sub

	Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
		Dim strnama As String = txtNama.Text.ToString()
		Dim stremail As String = txtEmail.Text.ToString()
		Dim strpassword As String = TxtPassword.Text.ToString()
		Dim strtgl As String = TxtTanggalLahir.Text.ToString()
		Dim strumur As String = txtUmur.Text.ToString()
		If FileUpload1.PostedFile IsNot Nothing AndAlso FileUpload1.PostedFile.FileName <> "" Then
			Dim imageSize As Byte() = New Byte(FileUpload1.PostedFile.ContentLength - 1) {}

			Dim uploadedImage__1 As HttpPostedFile = FileUpload1.PostedFile()

			uploadedImage__1.InputStream.Read(imageSize, 0, CInt(FileUpload1.PostedFile.ContentLength))

			' Create SQL Connection
			Dim con As New SqlConnection
			Dim xCommand As New SqlCommand

			con.ConnectionString = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True"
			'con.Open()

			' Create SQL Command

			Dim cmd As New SqlCommand()
			cmd.CommandText = "UPDATE pengguna SET Image = @Image, nama= @nama, email=@email, password=@password, tgl_lahir=@tgl_lahir, umur=@umur WHERE id= (SELECT MAX(Id) FROM pengguna)"
			cmd.CommandType = CommandType.Text
			cmd.Connection = con

			Dim nama As New SqlParameter("@nama", SqlDbType.VarChar, 50)
			nama.Value = strnama.ToString()
			cmd.Parameters.Add(nama)

			Dim email As New SqlParameter("@email", SqlDbType.VarChar, 50)
			email.Value = stremail.ToString()
			cmd.Parameters.Add(email)

			Dim password As New SqlParameter("@password", SqlDbType.VarChar, 50)
			password.Value = strpassword.ToString()
			cmd.Parameters.Add(password)

			Dim tgl As New SqlParameter("@tgl_lahir", SqlDbType.VarChar, 50)
			tgl.Value = strtgl.ToString()
			cmd.Parameters.Add(tgl)

			Dim umur As New SqlParameter("@umur", SqlDbType.VarChar, 50)
			umur.Value = strumur.ToString()
			cmd.Parameters.Add(umur)

			Dim UploadedImage2 As New SqlParameter("@Image", SqlDbType.Image, imageSize.Length)
			UploadedImage2.Value = imageSize
			cmd.Parameters.Add(UploadedImage2)
			con.Open()
			Dim result As Integer = cmd.ExecuteNonQuery()
			con.Close()

		End If
		Response.Redirect("user.aspx")

	End Sub
End Class