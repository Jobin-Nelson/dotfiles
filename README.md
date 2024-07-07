# DotFiles

## Setup dotfiles
```powershell
git clone --bare git@github.com:jobin-nelson/dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout -f
git --git-dir=$HOME/.dotfiles --work-tree=$HOME config status.showUntrackedFiles no
```

## Install Nerd Fonts
- https://www.nerdfonts.com/font-downloads

## Install C compilers
- https://winlibs.com/#download-release
- Extract to "C:"
- Add "C:\mingw64\bin" to $PATH

## Install winget
- install winget/App Installer from Microsoft Store

## Install Powershell 7.x
- `winget install --id Microsoft.PowerShell`

## Run Installation Script
- Run Powershell as admin
	- `Set-ExecutionPolicy RemoteSigned`
	- `cd ~\dotfiles`
	- `install.ps1`
