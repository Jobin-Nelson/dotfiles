# Creating Symbolic links
Write-Output "Creating Symlinks..."
New-Item -Path "$($env:LOCALAPPDATA)\nvim\init.vim" -Force -ItemType SymbolicLink -Target "init.vim"
New-Item -Path "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force -ItemType SymbolicLink -Target "Microsoft.PowerShell_profile.ps1"
New-Item -Path "$($env:LOCALAPPDATA)\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force -ItemType SymbolicLink -Target ".\settings.json"

# Installing PSModules
Write-Output "Installing PowerShell Modules..."
Write-Output "Installing oh-my-posh..."
Install-Module -Name oh-my-posh -Scope CurrentUser -Repository PSGallery -Force
Write-Output "Installing PSReadLine..."
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Write-Output "Installing Terminal-Icons..."
Install-Module -Name Terminal-Icons -Repository PSGallery -Force 
Write-Output "Installing z..."
Install-Module -Name z -Force

