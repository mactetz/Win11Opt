$WindowsServices = @(
"SSDPSRV", #Windows Search
"WSearch", #Windows Search
"lmhosts", #netbios
"SSDPSRV", #SSDP search
"PcaSvc"  #kompatibilitätsassistent
"Spooler", #Print Spooler
#"bthserv", #Bluetooth Support Service
"RemoteRegistry", #Remote Registry
"WerSvc", #Windows Error Reporting Service
"SysMain", #Superfetch
"DiagTrack", #(Diagnostic Tracking Service)
"WMPNetworkSvc", #Windows Media Player Network Sharing Service
"WaaSMedicSvc", #Update Medic Service (WaaSMedicSvc)
"fdPHost", #Telemetrie data collection
"InstallService", #ms store
"wuauserv", #windows update
"UsoSvc" #windows update
);

# stopp windows services
foreach($WindowsService in $WindowsServices)
{
    Stop-Service -Name $WindowsService -Force -NoWait
}
