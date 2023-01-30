Imports System.Data.SqlClient

Public Class register2
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

	End Sub

	Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
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
			cmd.CommandText = "UPDATE pengguna SET Image = @Image WHERE id= (SELECT MAX(id) FROM pengguna)"
			cmd.CommandType = CommandType.Text
			cmd.Connection = con

			Dim UploadedImage2 As New SqlParameter("@Image", SqlDbType.Image, imageSize.Length)
			UploadedImage2.Value = imageSize
			cmd.Parameters.Add(UploadedImage2)
			con.Open()
			Dim result As Integer = cmd.ExecuteNonQuery()
			con.Close()
			If result > 0 Then
				Label2.Text = "File Uploaded"
			End If
			Response.Redirect("register3.aspx")
		End If
	End Sub
End Class