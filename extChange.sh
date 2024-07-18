#!/bin/bash
powershell.exe -Command "
\$files = Get-ChildItem -Path C:\ -Recurse -Filter 'sample.txt'
foreach (\$file in \$files) {
    \$newName = \$file.FullName.Replace('sample.txt', 'sample.py')
    Rename-Item -Path \$file.FullName -NewName \$newName
}"

