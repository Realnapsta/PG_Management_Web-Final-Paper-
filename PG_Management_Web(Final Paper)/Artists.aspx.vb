Public Class Artists
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    '      Create a functionality In your web App that will enable a user To search For an Artist, And
    'If the Artist Is found, the user can Then Select it To display details Of the Artist As well As the
    'list of all the Arts/painting created by that artist on a New webpage.

    '     The Codes Below is the Continuity Answer to the Question 3B together with a screen shot

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim Collector_ID As Integer = CInt(txtIDSearch.Text)

        Session("Collector_ID") = Collector_ID
        Response.Redirect("ArtistDetails.aspx")
    End Sub
End Class