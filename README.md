# Name Change

This script renames all sample.txt files to sample.py in the entire C drive on a Windows machine.

## Description
The provided Bash script uses PowerShell commands to search for all files named sample.txt within the C drive and renames them to sample.py. 
This script is useful for batch renaming files across a large directory structure.

## Prerequisites
- Windows Operating System
- PowerShell
- Bash shell (e.g., Git Bash)

## Script Details
- Get-ChildItem -Path C:\ -Recurse -Filter 'sample.txt': Recursively searches for all sample.txt files starting from the C drive.
- foreach ($file in $files): Iterates through each found file.
- $file.FullName.Replace('sample.txt', 'sample.py'): Replaces the file name from sample.txt to sample.py.
- Rename-Item -Path $file.FullName -NewName $newName: Renames the file to the new name.

# Note
- Ensure you have the necessary permissions to rename files on the C drive.
- Use with caution as this script will rename all instances of sample.txt in the entire C drive.

