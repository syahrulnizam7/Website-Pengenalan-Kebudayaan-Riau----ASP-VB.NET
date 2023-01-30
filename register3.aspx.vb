Public Class register3
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Label2.Text = "File Uploaded"
	End Sub

	Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		Response.Redirect("login.aspx")
	End Sub
End Class