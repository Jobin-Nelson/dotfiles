# Creating Symbolic links
Write-Output "Creating Symlinks..."
New-Item -ItemType SymbolicLink -Path "$($env:LOCALAPPDATA)\nvim\init.vim" -Target "init.vim" -Force 
New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "Microsoft.PowerShell_profile.ps1" -Force 
New-Item -ItemType SymbolicLink -Path "$($env:LOCALAPPDATA)\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target ".\settings.json" -Force 
New-Item -ItemType SymbolicLink -Path "$HOME\.bashrc" -Target .\.bashrc -Force

