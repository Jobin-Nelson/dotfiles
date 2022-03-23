#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
(& "C:\Users\Jobin\miniconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion

# Alias
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias grep Select-String

# Load prompt
oh-my-posh --init --shell pwsh --config ~/dotfiles/.my_jandedobbeleer.omp.json | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
