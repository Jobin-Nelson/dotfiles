# DotFiles

## Install git
- install git manually to add git bash to windows terminal
	- https://git-scm.com/download/win

## Install winget
- install winget if not installed
	- https://github.com/microsoft/winget-cli
	- download the msixbundle

## Scoop installs
- `Invoke-WebRequest get.scoop.sh | Invoke-Expression`
- `scoop bucket add versions`
- `scoop install neovim-nightly jq`
	- Install Visual Studio 2015 C++ if you are missing VCRUNTIME 140.dll

## Install Nerd Fonts
- https://www.nerdfonts.com/font-downloads

## Run Installation Script
- Run Powershell as admin
	- `Set-ExecutionPolicy RemoteSigned`
	- `cd ~\dotfiles`
	- `install.ps1`

## Setup Python Environment
- `pyenv update`
	- `https://k0nze.dev/posts/install-pyenv-venv-vscode/`
