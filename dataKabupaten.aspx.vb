Imports System.Data
Imports System.Data.SqlClient
Public Class dataKabupaten
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Panel1.Visible = True
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim strnama_kabupaten As String = txtNamaKab.Text.ToString()
        Dim strdesk_kabupaten As String = txtdeskripsiKab.Text.ToString()
        Dim strtari As String = txtTari.Text.ToString()
        Dim strtradisi As String = txtTradisi.Text.ToString()
        Dim strlagu As String = txtLagu.Text.ToString()
        Dim strkuliner As String = txtKuliner.Text.ToString()
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
            cmd.CommandText = "INSERT INTO kabupaten(nama_kabupaten,deskripsi_kabupaten,Image,tarian,tradisi,lagu,kuliner)VALUES (@nama_kabupaten,@deskripsi_kabupaten,@Image,@tarian,@tradisi,@lagu,@kuliner)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con

            Dim nama_kabupaten As New SqlParameter("@nama_kabupaten", SqlDbType.VarChar, 50)
            nama_kabupaten.Value = strnama_kabupaten.ToString()
            cmd.Parameters.Add(nama_kabupaten)

            Dim deskripsi_kabupaten As New SqlParameter("@deskripsi_kabupaten", SqlDbType.VarChar, 100)
            deskripsi_kabupaten.Value = strdesk_kabupaten.ToString()
            cmd.Parameters.Add(deskripsi_kabupaten)

            Dim tari As New SqlParameter("@tarian", SqlDbType.VarChar, 100)
            tari.Value = strtari.ToString()
            cmd.Parameters.Add(tari)

            Dim tradisi As New SqlParameter("@tradisi", SqlDbType.VarChar, 100)
            tradisi.Value = strtradisi.ToString()
            cmd.Parameters.Add(tradisi)

            Dim lagu As New SqlParameter("@lagu", SqlDbType.VarChar, 100)
            lagu.Value = strlagu.ToString()
            cmd.Parameters.Add(lagu)

            Dim kuliner As New SqlParameter("@kuliner", SqlDbType.VarChar, 100)
            kuliner.Value = strkuliner.ToString()
            cmd.Parameters.Add(kuliner)

            Dim UploadedImage2 As New SqlParameter("@Image", SqlDbType.Image, imageSize.Length)
            UploadedImage2.Value = imageSize
            cmd.Parameters.Add(UploadedImage2)
            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()
            If result > 0 Then
                Label2.Text = "File Uploaded"
            End If
            GridView1.DataBind()
            txtdeskripsiKab.Text = String.Empty
            txtNamaKab.Text = String.Empty
        End If
    End Sub


End Class