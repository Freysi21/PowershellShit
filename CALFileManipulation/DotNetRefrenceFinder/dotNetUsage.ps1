#$stuff = Select-String "C:\Chocolate\LatariRepo\Table\485 Business Chart Buffer.txt" -Pattern ': DotNet "' | group path | select name > dotNetUsage
$stuff = Get-ChildItem -recurse | Select-String -Pattern ': DotNet "' 
for($i = 0; $i -lt $stuff.Count; $i++){
    $line = $stuff[$i].Line.Trim()
    if(!$line.Contains('PROCEDURE')) {
        $line -replace '.*:' >> dotNetVariables
    } else {
        $line >> dotNetParameters
    }  
}
Get-Content dotNetVariables | Group-Object |
Select-Object Count, Name, @{Name="Services";Expression={$_.Group.Name -join ','}} |
Format-Table -Wrap > dotNetVariablesGrouped
Get-Content dotNetParameters | Group-Object |
Select-Object Count, Name, @{Name="Services";Expression={$_.Group.Name -join ','}} |
Format-Table -Wrap > dotNetParametersGrouped