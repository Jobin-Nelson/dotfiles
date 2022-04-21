# Installing PSModules
Write-Output "Installing PowerShell Modules..."
Write-Output "Installing oh-my-posh..."
Install-Module -Name oh-my-posh -Scope CurrentUser -Repository PSGallery -Force
Write-Output "Installing PSReadLine..."
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Write-Output "Installing Terminal-Icons..."
Install-Module -Name Terminal-Icons -Scope CurrentUser -Repository PSGallery -Force 
Write-Output "Installing z..."
Install-Module -Name z -Force -Scope CurrentUser

