Dim objExcel, objWorkbook, objWorksheet
Set objExcel = CreateObject("Excel.Application")
Set objWorkbook = objExcel.Workbooks.Open("C:\Proj_Automation\TestResults\Result1.xlsx")
Set objWorksheet = objWorkbook.Worksheets(1)

i = 2

'Login_Page Test

objWorksheet.Cells(i, 1) = "Login_Page"
objWorksheet.Cells(i, 2) = LoginPage("user","P@$$w0rdchi1@3")
i = i+1

'Logout Test

objWorksheet.Cells(i, 1) = "'Logout_Test"
objWorksheet.Cells(i, 2) =  Logout_Test("button")
i = i+1

'Reset_Test

objWorksheet.Cells(i, 1) = "Reset_Test"
objWorksheet.Cells(i, 2) =  Reset_Test("button")
i = i+1

objWorkbook.Save 
objExcel.Quit

Set objWorksheet = Nothing
Set objWorkbook = Nothing
Set objExcel = Nothing





