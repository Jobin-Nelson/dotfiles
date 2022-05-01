# DotFiles

## Setup environment

- install git with gitbash

### Winget installs
- `winget install -e --id Microsoft.PowerShell`
- `winget install -e --id Microsoft.WindowsTerminal`
- `winget install -e --id Microsoft.VisualStudioCode`

### Scoop installs
- `Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression`
- `scoop bucket add versions`
- `scoop install neovim`
	- Install Visual Studio 2015 C++ if you are missing VCRUNTIME 140.dll

### Make Symlinks and Install PS Modules
- Run Windows Powershell as admin
	- `cd ~\dotfiles`
	- `.create_symlinks.ps1`
- Run the script on Powershell (7.x)
	- `install_pwsh_modules.ps1`
