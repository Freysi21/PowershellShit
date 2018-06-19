$filePath = 'C:\Users\arnif\Projects\Powershell Scripts\CALFileManipulation\GitConflicts\TestData\exampleCAL.txt'

$begins = gci $filePath -r | select-string "BEGIN"

$linesToDelete = Select-String  $filePath -Pattern "<<<<<<< HEAD", "=======", ">>>>>>>" | where {$_.linenumber -gt $begins[-1].LineNumber}

if($linesToDelete.Count -gt 0) {

    [array]::Reverse($linesToDelete)
    
    [System.Collections.ArrayList]$content = Get-Content $filePath
    
    for ($i=0;$i -lt $linesToDelete.Count; $i++) {
        $content.RemoveAt($linesToDelete[$i].LineNumber - 1)
    }
    $content > Results\foo.txt
}
