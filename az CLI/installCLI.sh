## Install Azure CLI (Latest)
** commands to install the **latest version of Azure CLI** across different platforms.

## Install latest Azure CLI on Windows

** Open PowerShell as Administrator and run:
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; Remove-Item .\AzureCLI.msi

** check version
az --version

## Install latest Azure CLI on macOS
brew update && brew install azure-cli

** if you already have Azure CLI installed, you can upgrade it using:
brew upgrade azure-cli

** check version
az --version

## Install latest Azure CLI on Linux

** For most Linux distributions (Ubuntu/Debian):
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

** For RHEL/CentOS(RPM-based):
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
curl -sL https://aka.ms/InstallAzureCLIRpm | sudo bash

** check version
az --version