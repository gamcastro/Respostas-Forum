# Pergunta no forum stackoverflow
# https://stackoverflow.com/questions/75925763/powershell-sort-by-uniqueness-of-the-hostname
[CmdletBinding()]
param()

$ht = @{}

$o = new-object psobject -property @{
    server    = 'DSERVER01'
    bootgroup = 'A'
}
$ht.Add($o.server, $o)

$o = new-object psobject -property @{
    server    = 'DSERVER02'
    bootgroup = 'B'
}
$ht.Add($o.server, $o)

$o = new-object psobject -property @{
    server    = 'PSERVER03'
    bootgroup = 'C'
}
$ht.Add($o.server, $o)

$o = new-object psobject -property @{
    server    = 'PSERVER04'
    bootgroup = 'A'
}
$ht.Add($o.server, $o)

# Now when you want to get a list of servers in boot group A, filter the collection like so,
$ht.GetEnumerator() | Where-Object {$_.Value.bootgroup -eq 'A'}

# And if all you need is the server name, pipe it to select-object.
$ht.GetEnumerator() | Where-Object {$_.Value.bootgroup -eq 'A'} | Select-Object -Property name
