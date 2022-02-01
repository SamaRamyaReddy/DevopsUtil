Function Remove-Folder {
param(
    [parameter(Mandatory=$true)]
    [validateNotNull()]
    [string]
    $sourcepath                   
)
if($sourcepath-ne $null){
    if(Test-path $sourcepath){
      Remove-Item -path $sourcepath -Force -Recurse
    }
    else {
    write-error "Path does not exists"
    }
}
}
Function Remove-MultipleFolders {
param(
   [Parameter(Mandatory=$true)]
   [ValidateNotNull()]
   [string[]]
   $MultipleFolders
)
if($MultipleFolders -ne $null) {
    if(Test-Path $MultipleFolders) {
        Remove-Item -path $MultipleFolders -Recurse -Force
    }
    else {
    Write-error "Paths Does not Exists"
    }
}
}