# PowerShell script to connect to Microsoft Graph and get list of all users

# Install Microsoft Graph PowerShell module if not already installed
# Uncomment the line below if needed
# Install-Module Microsoft.Graph -Scope CurrentUser

# Import the required module
Import-Module Microsoft.Graph

# Connect to Microsoft Graph
# This will open a browser window for authentication
Connect-MgGraph -Scopes "User.Read.All"

# Get all users from Azure AD
$users = Get-MgUser -All

# Display the list of users
Write-Host "List of all users:" -ForegroundColor Green
$users | Select-Object Id, DisplayName, UserPrincipalName, Mail | Format-Table -AutoSize

# Optional: Export to CSV
# $users | Select-Object Id, DisplayName, UserPrincipalName, Mail | Export-Csv -Path ".\users.csv" -NoTypeInformation

# Disconnect from Microsoft Graph
Disconnect-MgGraph
