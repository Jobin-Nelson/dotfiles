# Installing packages
Write-Host "Installing Packages"
winget import -i "$HOME\dotfiles\winget_packages.json"
Write-Host "...done`n"

# Installing PSModules
Write-Host "Installing PowerShell Modules..."
Write-Host "Installing PSReadLine..."
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Write-Host "Installing Terminal-Icons..."
Install-Module -Name Terminal-Icons -Scope CurrentUser -Repository PSGallery -Force 
Write-Host "Installing z..."
Install-Module -Name z -Force -Scope CurrentUser
Write-Host "...done`n"

# Creating Symbolic links
Write-Host "Creating Symlink for config files"
Write-Host "Creating Symlink $env:LOCALAPPDATA\nvim\init.vim"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim\init.vim" -Target "$HOME\dotfiles\init.vim" -Force 
Write-Host "Creating Symlink $PROFILE"
New-Item -ItemType SymbolicLink -Path "$PROFILE" -Target "$HOME\dotfiles\Microsoft.PowerShell_profile.ps1" -Force
Write-Host "Creating Symlink $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$HOME\dotfiles\settings.json" -Force 
Write-Host "Creating Symlink $HOME\.bash_profile"
New-Item -Type SymbolicLink -Path "$HOME\.bash_profile" -Target "$HOME\dotfiles\.bash_profile" -Force
Write-Host "Creating Symlink $HOME\.bashrc"
New-Item -ItemType SymbolicLink -Path "$HOME\.bashrc" -Target "$HOME\dotfiles\.bashrc" -Force
Write-Host "Creating Symlink $HOME\.gitconfig"
New-Item -Type SymbolicLink -Path "$HOME\.gitconfig" -Target "$HOME\dotfiles\.gitconfig" -Force
Write-Host "...done`n"

# Setting up Python Environment
Write-Host "Setting up Python Development Environment"
Write-Host "Downloading Pyenv-Win"
Invoke-WebRequest -Uri "https://github.com/pyenv-win/pyenv-win/archive/refs/heads/master.zip" -OutFile "$HOME\Downloads\pyenv-win-master.zip"
Write-Host "Creating directory $HOME\.pyenv"
New-Item -Type Directory -Path "$HOME\.pyenv"
Write-Host "Extracting file"
Expand-Archive -LiteralPath "$HOME\Downloads\pyenv-win-master.zip" -DestinationPath "$HOME\Downloads\"
Write-Host "Copying files"
Copy-Item -Path "$HOME\Downloads\pyenv-win-master\pyenv-win" -Destination "$HOME\.pyenv\pyenv-win" -Recurse
Copy-Item -LiteralPath "$HOME\Downloads\pyenv-win-master\.version" -Destination "$HOME\.pyenv\"
Write-Host "Adding Environment Path"
[System.Environment]::SetEnvironmentVariable('PYENV',$env:USERPROFILE + "\.pyenv\pyenv-win\","User")
[System.Environment]::SetEnvironmentVariable('PYENV_HOME',$env:USERPROFILE + "\.pyenv\pyenv-win\","User")
[System.Environment]::SetEnvironmentVariable('path', $env:USERPROFILE + "\.pyenv\pyenv-win\bin;" + $env:USERPROFILE + "\.pyenv\pyenv-win\shims;" + [System.Environment]::GetEnvironmentVariable('path', "User"),"User")
Write-Host "...done`n"

