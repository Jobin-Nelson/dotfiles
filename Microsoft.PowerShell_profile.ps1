# Alias
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Load prompt
oh-my-posh --init --shell pwsh --config ~/dotfiles/.my_jandedobbeleer.omp.json | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode "vi"


# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
