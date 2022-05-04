# Load prompt
oh-my-posh init pwsh --config ~/dotfiles/.my_jandedobbeleer.omp.json | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# Alias
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
