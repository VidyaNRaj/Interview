Dim objQTP
Set objQTP = Createobject("QuickTest.Application")

objQTP.Visible = True 'To view the Tool during execution

objQTP.Launch 'To open UFT Tool

objQTP.Open "C:\Proj_Automation\Drivers\Driver1"
objQTP.Test.Run
objQTP.Test.Close

objQTP.Quit 'To close the Tool
Set objQTP = Nothing 'To release the memory
