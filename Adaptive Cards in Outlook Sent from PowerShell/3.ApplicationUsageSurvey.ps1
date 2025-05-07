# Import the ActionableMessages module
Import-Module ActionableMessages
# Import the Microsoft Graph Authentication module
Import-Module Microsoft.Graph.Authentication

# Create an application usage survey card using the prebuilt function
$appCardParams = @{
  OriginatorId     = "software-survey-system"
  ApplicationName  = "Microsoft Excel"
  Version          = "2021"
  Vendor           = "Microsoft"
  Department       = "Finance"
  TicketNumber     = "SAM-2023-004"
  ResponseEndpoint = "https://api.example.com/application-usage"
}

$appCard = New-AMApplicationUsageSurveyCard @appCardParams

# Export the card for email
$params = Export-AMCardForEmail -Card $appCard -Subject "Application Usage Survey" -ToRecipients "morten.kristensen@bestseller.com" -CreateGraphParams

Connect-MgGraph -Scopes "Mail.Send" -NoWelcome
Invoke-MgGraphRequest -Method POST -Uri "https://graph.microsoft.com/v1.0/me/sendMail" -Body $params