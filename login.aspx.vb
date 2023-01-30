
Imports System.Data.SqlClient

Public Class login
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

	End Sub

	Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		Dim koneksi As New SqlConnection
		Dim xcommand As New SqlCommand
		Dim xR As SqlDataReader

		koneksi.ConnectionString = ("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True")
		koneksi.Open()

		xcommand = New SqlCommand("select password from pengguna where email='" + TextBox1.Text + "'", koneksi)
		xR = xcommand.ExecuteReader()
		If (xR.Read) Then
			If (xR(0).ToString = TextBox2.Text) Then
				Response.Redirect("beranda.aspx")
			Else
				Response.Write("email/password salah")
			End If
		Else
			Response.Write("email tidak tersedia")
		End If
		koneksi.Close()

	End Sub



End Class