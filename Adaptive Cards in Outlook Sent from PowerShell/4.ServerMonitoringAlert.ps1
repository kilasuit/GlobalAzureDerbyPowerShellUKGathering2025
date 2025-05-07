# Import the ActionableMessages module
Import-Module ActionableMessages
# Import the Microsoft Graph Authentication module
Import-Module Microsoft.Graph.Authentication

# Create a server monitoring alert card using the prebuilt function
$serverCardParams = @{
  OriginatorId   = "monitoring-system"
  Server         = "Server XYZ"
  Status         = "Offline"
  ServerType     = "Web Server"
  IPAddress      = "192.168.1.1"
  MonitoringUrl  = "https://example.com/monitoring"
  ActionUrl      = "https://example.com/restart"
  ActionTitle    = "Restart Server"
  AcknowledgeUrl = "https://example.com/acknowledge"
}

$serverCard = New-AMServerMonitoringCard @serverCardParams

# Export the card for email
$params = Export-AMCardForEmail -Card $serverCard -Subject "Server Monitoring Alert" -ToRecipients "morten.kristensen@bestseller.com" -CreateGraphParams

Connect-MgGraph -Scopes "Mail.Send" -NoWelcome
Invoke-MgGraphRequest -Method POST -Uri "https://graph.microsoft.com/v1.0/me/sendMail" -Body $params