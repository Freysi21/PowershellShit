function Match-Conflict ($Content, $Regex) {    
    $stringmatch = Get-Content  -Raw -Path 'C:\Users\arnif\Projects\Powershell Scripts\exampleCAL.txt'
    Select-String -InputObject $stringmatch -pattern "BEGIN"
}


function Fix-GlobalVariableIdConflict($Content){
    
}
