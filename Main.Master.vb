
Imports System.Data.SqlClient

Public Class Main
	Inherits System.Web.UI.MasterPage

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Dim koneksi As New SqlConnection
		Dim xcommand As New SqlCommand
		Dim xR As SqlDataReader
		Dim txtNama As System.Web.UI.WebControls.TextBox



		koneksi.ConnectionString = ("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True")
		koneksi.Open()

		xcommand = New SqlCommand("select nama from pengguna where id= (SELECT MAX(id) FROM pengguna)", koneksi)
		xR = xcommand.ExecuteReader()
		xR.Read()
		Label1.Text = xR(0).ToString
		koneksi.Close()
	End Sub

End Class