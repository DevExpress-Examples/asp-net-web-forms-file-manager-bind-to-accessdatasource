Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub AccessDataSource1_Modifying(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs)
		Throw New Exception("Please download the example to modify the datasource")
	End Sub
End Class
