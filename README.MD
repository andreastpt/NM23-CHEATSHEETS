Start-Service msiscsi
Set-Service msiscsi -startuptype “automatic”
Enable-NetFirewallRule -DisplayGroup "Remote Administration"
Add-WindowsCapability -Online -Name ServerCore.AppCompatibility
diskmgmt.msc or diskmgmt
explorer + notepad for html
Computer > Administrative Templates > Windows Components > Windows CoPilot and enabe “Turn off Windows Copilot”
