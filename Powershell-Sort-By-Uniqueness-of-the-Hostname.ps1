# Pergunta no forum stackoverflow
# https://stackoverflow.com/questions/75925763/powershell-sort-by-uniqueness-of-the-hostname
[CmdletBinding()]
param()

$hostname = @('DSERVER01', 'DSERVER02', 'PSERVER03', 'PSERVER04', 'DSERVER05', 'PSERVER01')
foreach ($ho in $hostname) {
    Write-Host "É o nome $ho"
}

# Criar uma ferramenta para a resposta