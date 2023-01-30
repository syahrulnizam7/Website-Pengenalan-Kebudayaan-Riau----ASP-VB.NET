Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class HandlerRegister : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        'con.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand()

        con.ConnectionString = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BudayaRiau;Integrated Security=True"
        con.Open()

        ' Create SQL Command
        cmd.CommandText = "Select Image from pengguna where id= (SELECT MAX(id) FROM pengguna)"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con


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