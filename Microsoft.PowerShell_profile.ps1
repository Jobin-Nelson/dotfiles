# # Load prompt
Invoke-Expression (& "C:\Program Files\starship\bin\starship.exe" init powershell)

# Icons
Import-Module -Name Terminal-Icons

# Alias
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias vlc 'C:\Program Files\VideoLAN\VLC\vlc.exe'
Set-Alias brave 'C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe'

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}



