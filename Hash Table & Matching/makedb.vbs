' Create jpg_dir and thumbnail_dir if they do not exist
Dim fso, jpg_dir, thumbnail_dir
jpg_dir = "jpg"
thumbnail_dir = "thumb"
Set fso = CreateObject("Scripting.FileSystemObject")
if (not fso.FolderExists(jpg_dir)) then
  fso.CreateFolder(jpg_dir)
end if
if (not fso.FolderExists(thumbnail_dir)) then
  fso.CreateFolder(thumbnail_dir)
end if
 
' Execute makedb.sh
Dim return
Set objShell = WScript.CreateObject("WScript.Shell")
return = objShell.Run("win-bash makedb.sh", 1, true)
if (return = 10) then
  WScript.Echo "'convert.exe' is not found."
end if
