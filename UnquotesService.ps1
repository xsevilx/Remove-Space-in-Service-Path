$Services = (Get-CIMInstance win32_service | Where-Object{$_.PATHNAME -match '^((?!\").)*$'} | Select Name, PathName) | where -property pathname -like '* *'

foreach($Service in $Services){
    sc.exe qc $Service.Name
    }


sc config $Service.Name binPath= "\"$Service.Pathname\" -sMSSQLSERVER"

Write-Host "`"$Path`""

$Path = $services.PathName
Write-Host $Services.PathName

foreach($Service in $Services){
    $Path = $Service.PathName
    Write-Host "`"$Path`""
    
    }


Get-CIMInstance win32_service | Where-Object{$_.PATHNAME -match '^((?!\").)*$'} | where Pathname -Contains " " | Select Name, PathName
$Path = $Services | where -property pathname -like '* *'
$Path | Where-Object -Property PathName -like "a"
$Services | Get-Member