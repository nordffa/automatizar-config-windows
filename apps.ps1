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
winget install 7zip.7zip
winget install EpicGames.EpicGamesLauncher
winget install Microsoft.VCRedist.2015+.x64
winget install Microsoft.VCRedist.2015+.x86
