# Creating Symbolic links
Write-Host "Creating Symlink $env:LOCALAPPDATA\nvim\init.vim"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim\init.vim" -Target ".\init.vim" -Force 
Write-Host "Creating Symlink $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target ".\Microsoft.PowerShell_profile.ps1" -Force 
Write-Host "Creating Symlink $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target ".\settings.json" -Force 
Write-Host "Creating Symlink $HOME\.bash_profile"
New-Item -Type SymbolicLink -Path "$HOME\.bash_profile" -Target ".\.bash_profile" -Force
Write-Host "Creating Symlink $HOME\.bashrc"
New-Item -ItemType SymbolicLink -Path "$HOME\.bashrc" -Target ".\.bashrc" -Force
Write-Host "...done"

