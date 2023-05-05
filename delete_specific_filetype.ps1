#$FileType = "*.txt"


Write-Output "109-Backup Processing"
Write-Output ""
Write-Output "Please Don't close"


# Get all files in the folder with the specified file type
$Users = Get-ChildItem -Path "C:\Users\" -Name *
foreach ($User in $Users){
 $Files = Get-ChildItem -Path "C:\Users\$user\AppData\Local\test" -ErrorAction SilentlyContinue # -Filter $FileType
# Delete each file in the array
foreach ($File in $Files) {
    Remove-Item $File.FullName -Force
}

}
