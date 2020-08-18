Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        HiddenField1.Value = TextBox1.Text
        'Dim rowCount As Integer = 2
        'Dim id As Integer = 12
        'Dim phoneNumber As String = ""

        'If (rowCount > 1) Then
        '    If id < 20 Then
        '        phoneNumber = "4807450772"
        '        Console.WriteLine(phoneNumber)
        '    End If
        'End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Label1.Text = HiddenField1.Value
    End Sub



End Class