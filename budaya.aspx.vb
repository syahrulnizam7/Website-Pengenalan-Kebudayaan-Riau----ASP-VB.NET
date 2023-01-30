Public Class budaya
	Inherits System.Web.UI.Page



	Protected Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
		If (e.CommandName = "KlikBudaya") Then
			Response.Redirect("detilBudaya.aspx?id=" + e.CommandArgument.ToString())
		End If

	End Sub

End Class