'***********************************************************************************
' Function Name : -  Login Page
'Author : - Vidya
'Date
'***********************************************************************************

Function LoginPage(txtUser,txtpwd)
		
On error resume next
Dim WshShell, objIE, ElementCol
Dim LinkHref

LinkHref = "http://localhost:3000"

Set WshShell = WScript.CreateObject("WScript.Shell")
Set objIE = CreateObject("InternetExplorer.Application")
objIE.Visible = False    

objIE.Navigate LinkHref 
wshShell.AppActivate objIE

Do While objIE.Busy
    wscript.sleep 100
Loop

If Browser("localhost").Page("SupermetricsKitty Manager").WebEdit("Username").Exist Then
	LoginPage = "LoginPage is displayed successfully - Passed"
else
    LoginPage = "LoginPage is not displayed successfully - Failed"
End If
wait(05)

Set ElementCol = objIE.Document.getElementsByTagName("name")

For Each Link In ElementCol
    If Link.innerHTML = "Continue to this website (not recommended)." Then
        Link.Click
Exit For
End If
Next


objIE.Visible = True

objIE.Document.All.Item("username").value = txtuser
    'objIE.Document.getElementByName("username").Value = "myusername"
    'objIE.document.getElementById("username").value = "myusername"

objIE.Document.All.Item("password").value = txtpwd
    'objIE.Document.getElementByName("password").Value = "mypass"
    'objIE.document.getElementById("password").value = "mypass"
    
   
If Browser("localhost").Page("SupermetricsKitty Manager").WebButton("login").Exist Then
	LoginButton = "LoginButton is displayed successfully - Passed"
else
    LoginButton = "LoginButton is not displayed successfully - Failed"
End If
wait 05

Browser("localhost").Page("SupermetricsKitty Manager").WebButton("login").click
 LoginButton = "LoginButton clicked successfully - Passed"

End Function
'*************************************************************************************
' Function Name : -  Reset button
'Author : - Vidya
'Date
'*************************************************************************************
Function Reset()

If Browser("localhost").Page("SupermetricsKitty Manager").WebButton("Reset").Exist Then
	ResetBtn = "ResetBtn is displayed successfully - Passed"
else
    ResetBtn = "ResetBtn is not displayed successfully - Failed"
End If
wait(05)
End Function
'*************************************************************************************
' Function Name : -  Logout button
'Author : - Vidya
'Date
'*************************************************************************************
Function Logout()

If Browser("localhost").Page("SupermetricsKitty Manager").WebButton("Logout").Exist Then
	Logout = "Logout button is displayed successfully - Passed"
else
    Logout = "Logout button is not displayed successfully - Failed"
End If
wait(05)

Browser("localhost").Page("SupermetricsKitty Manager").WebButton("Logout").click
Logout = "Logout Button clicked successfully - Passed"

End Function
'*************************************************************************************
'Function Name : -  Change the name of the cat
'Author : - Vidya
'Date
'*************************************************************************************
Function changeCatName(EmpNum)	

Browser("localhost").Page("SupermetricsKitty Manager").webedit("CatName").Set "xyz"
Browser("localhost").Page("SupermetricsKitty Manager").WebButton("Save").click

'Validate new name given.
CatName =  Browser("localhost").Page("SupermetricsKitty Manager").GetROProperty("name")
If CatName = "xyz" Then
	msgbox ("Name saved successfully")
else
	msgbox ("Name not saved successfully")
End If

End Function
'*************************************************************************************
