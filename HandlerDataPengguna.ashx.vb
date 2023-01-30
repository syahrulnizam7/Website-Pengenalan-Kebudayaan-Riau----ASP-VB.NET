Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class HandlerDataPengguna : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        'con.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand()

        con.ConnectionString = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True"
        con.Open()

        ' Create SQL Command
        cmd.CommandText = "Select Image from pengguna where ID =@IID"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con

        Dim ImageID As New SqlParameter("@IID", System.Data.SqlDbType.Int)
        ImageID.Value = context.Request.QueryString("ID")
        cmd.Parameters.Add(ImageID)
        Dim dReader As SqlDataReader = cmd.ExecuteReader()
        dReader.Read()
        context.Response.BinaryWrite(DirectCast(dReader("Image"), Byte()))
        dReader.Close()
        con.Close()
    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class