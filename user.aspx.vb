Imports System.Data.SqlClient
Public Class user
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Dim koneksi As New SqlConnection
		Dim xcommand As New SqlCommand
		Dim xR As SqlDataReader

		LabelDibuat.Text = "Akun anda dibuat pada " + DateTime.Now

		koneksi.ConnectionString = ("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True")
		koneksi.Open()

		xcommand = New SqlCommand("select * from pengguna where id= (SELECT MAX(id) FROM pengguna)", koneksi)
		xR = xcommand.ExecuteReader()
		xR.Read()
		LabelNama.Text = xR("nama")
		LabelEmail.Text = xR("email")
		LabelUmur.Text = xR("umur")
		LabelTglLahir.Text = xR("tgl_lahir")
		LabelPassword.Text = xR("password")
		koneksi.Close()


	End Sub

End Class