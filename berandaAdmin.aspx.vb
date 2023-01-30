Imports System.Data.SqlClient

Public Class berandaAdmin
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Dim koneksi As New SqlConnection
		Dim koneksi2 As New SqlConnection
		Dim koneksi3 As New SqlConnection
		Dim xcommand As New SqlCommand
		Dim xcommand2 As New SqlCommand
		Dim xcommand3 As New SqlCommand
		Dim xR As SqlDataReader
		Dim xR2 As SqlDataReader
		Dim xR3 As SqlDataReader





		koneksi.ConnectionString = ("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True")
		koneksi.Open()

		xcommand = New SqlCommand("select count(*) from pengguna", koneksi)
		xR = xcommand.ExecuteReader()
		xR.Read()
		Label1.Text = xR(0).ToString

		koneksi.Close()

		koneksi2.ConnectionString = ("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True")
		koneksi2.Open()
		xcommand2 = New SqlCommand("select count(*) from kabupaten", koneksi2)
		xR2 = xcommand2.ExecuteReader()
		xR2.Read()
		Label2.Text = xR2(0).ToString
		koneksi2.Close()


		koneksi3.ConnectionString = ("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True")
		koneksi3.Open()
		xcommand3 = New SqlCommand("select count(*) from usul", koneksi3)
		xR3 = xcommand3.ExecuteReader()
		xR3.Read()
		Label3.Text = xR3(0).ToString
		koneksi3.Close()

	End Sub

    Protected Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
End Class