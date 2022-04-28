# Installing PSModules
Write-Host "Installing PowerShell Modules..."
Write-Host "Installing oh-my-posh..."
winget install oh-my-posh
Write-Host "Installing PSReadLine..."
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Write-Host "Installing Terminal-Icons..."
Install-Module -Name Terminal-Icons -Scope CurrentUser -Repository PSGallery -Force 
Write-Host "Installing z..."
Install-Module -Name z -Force -Scope CurrentUser
Write-Host "...done"

