$targetfolder = "C:\Users\arjun\OneDrive\Documents\MeScript\PS" # where is the folder
$find = "yo whatsup"   #what part do you want to find 
$replace ="replace with this" # what do you want to replace it with

cd $targetfolder


$folderitems = Get-ChildItem $targetfolder -Filter *.xml |
ForEach-Object {

(Get-Content $_ -raw) -replace $find,$replace | out-file $_

}

