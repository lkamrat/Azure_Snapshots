# List all Azure VM Snapshots in a Resource Group and output to a table
Get-AzureRmSnapshot | Format-Table -Property Name,@{Name="Resource Group"; Expression={$_.ResourceGroupName}; Alignment="center"; },@{Name="Size in GB"; Expression={$_.DiskSizeGB}; Alignment="center"; } -AutoSize -Wrap
