#PowerCLI ****Remove all ESXi hosts from vCenter and readd them again.**** 

vSphere PowerCLI> $esx = get-vmhost
PowerCLI C:\Program Files (x86)\VMware\Infrastructure\vSphere PowerCLI> echo $esx

Name                 ConnectionState PowerState NumCpu CpuUsageMhz CpuTotalMhz   MemoryUsageGB   MemoryTotalGB Version
----                 --------------- ---------- ------ ----------- -----------   -------------   ------------- -------
192.168.1.30         Connected       PoweredOn       2         252        5600           3.727           4.000   5.5.0
10.0.0.30            Connected       PoweredOn       4        1385       11196           3.725           4.000   5.5.0


vSphere PowerCLI>foreach ($Name in $esx) {Remove-VMHost $Name}

vSphere PowerCLI>foreach ($Name in $esx) {Add-VMHost $Name -Location vc1 -User root -Password VMware123! -force}


