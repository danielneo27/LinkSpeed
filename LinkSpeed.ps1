<#	
	.NOTAS
	===========================================================================
	 Criado em:   	15/12/2020 14:34
	 Criado por:   	Daniel Neo
     Versão:        0.3.0
     Atualizado:    28/01/2021
	 Nome do arquivo:  LinkSpeed
	===========================================================================
	.DESCRIÇÃO
	   Mostrar velocidade máxima de internet suportada pela porta de rede do seu dispositivo.
#>
cls
$host.UI.RawUI.ForegroundColor = "DarkGreen"
$host.UI.RawUI.BackgroundColor = "Black"
Unblock-File -Path C:\Users\$env:UserName\Downloads\LinkSpeed.ps1
cls

Get-NetAdapter

Get-NetAdapter | where Status -eq "Up" | select InterfaceDescription, LinkSpeed

Read-Host -Prompt "Pressione Enter para sair"