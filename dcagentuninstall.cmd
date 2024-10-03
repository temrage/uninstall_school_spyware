@echo OFF
Rem Manage Engine Desktopcentral Agent Uninstallation String
Rem This bat file will uninstall the Desktopcentral Agent 
%SystemRoot%\system32\msiexec.exe /x{6AD2231F-FF48-4D59-AC26-405AFAE23DB7} MSIRESTARTMANAGERCONTROL=Disable REBOOT="ReallySuppress" /qn 
