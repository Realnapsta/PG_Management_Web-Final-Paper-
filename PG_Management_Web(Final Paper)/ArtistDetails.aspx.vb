Public Class ArtistDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Collector_ID As Integer
        Collector_ID = Session("Collector_ID")
    End Sub

End Class