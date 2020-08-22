Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        'HiddenField1.Value = TextBox1.Text
        'Dim rowCount As Integer = 2
        'Dim id As Integer = 12
        'Dim phoneNumber As String = ""

        'If (rowCount > 1) Then
        '    If id < 20 Then
        '        phoneNumber = "4807450772"
        '        Console.WriteLine(phoneNumber)
        '    End If
        'End If

        If IsPostBack = False Then
            'this runs on every post back incuding page loads


        Else
            'this only runs on post back events like button clicks
            Dim x As String = Request("__EVENTARGUMENT")
            Dim xx As String = Request("__EVENTTARGET")

            'If x.Equals("test1") Then
            '    ButtonA_Click(sender, e)
            'End If


        End If

        Dim str As String = "Hello World!"
        Console.WriteLine(str)





    End Sub

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    '    Label1.Text = HiddenField1.Value
    'End Sub

    'Private Sub ButtonA_Click(sender As Object, e As System.EventArgs) Handles ButtonA.Click
    '    Response.Write("You ran the ButtonA click event")
    '    Dim counter As Integer = 0
    '    counter += 1
    '    Console.WriteLine("Counter : " & counter)
    'End Sub

    'Private Sub ButtonB_Click(sender As Object, e As System.EventArgs) Handles ButtonB.Click
    '    Response.Write("You ran the ButtonB cliick event")
    'End Sub


End Class