# DotFiles

## Setup environment
### Winget installs
- `winget install -e --id Git.Git`
- `winget install -e --id Microsoft.PowerShell`
- `winget install -e --id Microsoft.WindowsTerminal`
- `winget install -e --id Microsoft.VisualStudioCode`
- `winget install -e --id Anaconda.Miniconda3`

### Scoop installs
- `Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression`
- `scoop install neovim`

### Make Symlinks and Install PS Modules
- Run Windows Powershell as admin
	- `cd ~\dotfiles`
	- `.create_symlinks.ps1`
- Run the script on Powershell (7.x)
	- `install_pwsh_modules.ps1`
