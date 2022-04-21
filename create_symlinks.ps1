# Creating Symbolic links
Write-Output "Creating Symlinks..."
New-Item -Path "$($env:LOCALAPPDATA)\nvim\init.vim" -Force -ItemType SymbolicLink -Target "init.vim"
New-Item -Path "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force -ItemType SymbolicLink -Target "Microsoft.PowerShell_profile.ps1"
New-Item -Path "$($env:LOCALAPPDATA)\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force -ItemType SymbolicLink -Target ".\settings.json"
New-Item -ItemType SymbolicLink -Path "$HOME\.bashrc" -Target .\.bashrc -Force

