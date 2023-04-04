[CmdletBinding()]
param()

$hostname = @('DSERVER01', 'DSERVER02', 'PSERVER03', 'PSERVER04', 'DSERVER05', 'PSERVER01')
foreach ($ho in $hostname) {
    Write-Host "É o nome $ho"
}

