# Define o plano de energia para "Alto desempenho"
powercfg /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

# Desliga a transparência
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name EnableTransparency -Value 0

# Habilita o tema escuro
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name AppsUseLightTheme -Value 0 -PropertyType DWORD -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name SystemUsesLightTheme -Value 0 -PropertyType DWORD -Force

# Desabilita o Controle de Conta de Usuário (UAC)
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name EnableLUA -Value 0

# Define as configurações de desempenho para "Melhor Desempenho"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name VisualFXSetting -Value 2
Stop-Process -Name explorer -Force

# Ativa o uso de ícones pequenos na barra de tarefas
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name TaskbarSmallIcons -Value 1

# Instala os seguintes aplicativos
winget install File-New-Project.EarTrumpet
winget install Google.Chrome
winget install Google.GoogleDrive
winget install 7zip.7zip
winget install SumatraPDF.SumatraPDF
winget install Spotify.Spotify
winget install Mozilla.Thunderbird
winget install Discord.Discord
winget install EpicGames.EpicGamesLauncher
winget install Microsoft.VCRedist.2015+.x64
winget install Microsoft.VCRedist.2015+.x86
winget install Microsoft.VisualStudioCode

# Desinstala os seguintes aplicativos (pré instalados no sistema)
winget uninstall Microsoft.OneDrive
Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage
Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage
Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage
Get-AppxPackage *Microsoft.HEVCVideoExtension* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage
Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Outlook.DesktopIntegrationServices* | Remove-AppxPackage
Get-AppxPackage *Microsoft.People* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage
Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.StorePurchaseApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.VP9VideoExtensions* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage
Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage

cls
pause
