# Utility functions
function md5    { Get-FileHash -Algorithm MD5 $args }
function sha1   { Get-FileHash -Algorithm SHA1 $args }
function sha256 { Get-FileHash -Algorithm SHA256 $args }

function dirs {
  if ($args.Count -gt 0) {
    Get-ChildItem -Recurse -Include "$args" | Foreach-Object FullName
  } else {
    Get-ChildItem -Recurse | Foreach-Object FullName
  }
}

function admin {
  if ($args.Count -gt 0) {
    $argList = "& '" + $args + "'"
      Start-Process "$PSHOME\powershell.exe" -Verb runAs -ArgumentList $argList
  } else {
    Start-Process "$PSHOME\powershell.exe"
  }
}

function Get-PubIp {
  (Invoke-WebRequest https://ifconfig.me/ip).Content
}

function uptime {
  Get-WmiObject win32_operatingsystem | Select-Object csname, @{LABEL='LastBootUpTime';
    EXPRESSION={$_.ConverttoDateTime($_.lastbootuptime)}}
}

function Find-File($name) {
  Get-ChildItem -Recurse -Filter "*${name}*" -ErrorAction SilentlyContinue | Foreach-Object {
    $file_path = $_.directory
      Write-Output "${file_path}\${_}"
  }
}

function unzip($file) {
  Write-Host("Extracting", $file, "to", $pwd)
    $fullFile = Get-ChildItem -Path $pwd -Filter "$file" | Foreach-Object {$_.FullName}
  Expand-Archive -Path $fullFile -DestinationPath $pwd
}

function sed($find, $replace, $file) {
  (Get-Content $file).replace($find, $replace) | Set-Content $file
}

function which($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function pkill($name) {
  Get-Process $name -ErrorAction SilentlyContinue | Stop-Process
}

function pgrep($name) {
  Get-Process "*$name*"
}

function Get-Battery() {
  Get-WmiObject win32_battery | Select-Object -Property EstimatedChargeRemaining
}

function dot() {
  & git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args
}

function Get-DirectorySize([string]$Path) {
  $size = (Get-ChildItem -Path $Path -Recurse | Measure-Object -Property Length -Sum).Sum
  if ($size -lt 1KB) {
    "$size B"
  } elseif ($size -lt 1MB) {
    "{0:N2} KB" -f ($size / 1KB)
  } elseif ($size -lt 1GB) {
    "{0:N2} MB" -f ($size / 1MB)
  } else {
    "{0:N2} GB" -f ($size / 1GB)
  }
}


# Alias
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias vlc 'C:\Program Files\VideoLAN\VLC\vlc.exe'
Set-Alias ll Get-ChildItem

# Modules
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode vi
Import-Module -Name Terminal-Icons

# # Load prompt
Invoke-Expression (& "C:\Program Files\starship\bin\starship.exe" init powershell)

