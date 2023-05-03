# Set the folder path and file type you want to delete
$FolderPath = "C:\Users\Administrator\Documents\ExampleFolder"
$FileType = "*.txt"

# Get all files in the folder with the specified file type
$Files = Get-ChildItem -Path $FolderPath -Filter $FileType

# Delete each file in the array
foreach ($File in $Files) {
    Remove-Item $File.FullName -Force
}
