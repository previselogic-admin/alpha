# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Group.Read.All"
connect-mggraph -ClientId

# Get all groups
$groups = Get-MgGroup -All

# Output the groups
$groups |
    Select-Object Id, DisplayName, Description, Mail, MailEnabled, SecurityEnabled |
    Format-Table -AutoSize
