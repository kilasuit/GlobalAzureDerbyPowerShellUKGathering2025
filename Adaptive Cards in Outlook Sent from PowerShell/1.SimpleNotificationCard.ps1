# Import the ActionableMessages module
Import-Module ActionableMessages
# Import the Microsoft Graph Authentication module
Import-Module Microsoft.Graph.Authentication

# Create a simple notification card
$card = New-AMCard -OriginatorId "your-originator-id"
$title = New-AMTextBlock -Text "Notification Title" -Size "Large" -Weight "Bolder"
$notificationText = New-AMTextBlock -Text "This is a simple notification message." -Wrap $true
Add-AMElement -Card $card -Element $title
Add-AMElement -Card $card -Element $notificationText

# Export the card for email
$params = Export-AMCardForEmail -Card $card -Subject "Simple Notification" -ToRecipients "morten.kristensen@bestseller.com" -CreateGraphParams

Connect-MgGraph -Scopes "Mail.Send" -NoWelcome
Invoke-MgGraphRequest -Method POST -Uri "https://graph.microsoft.com/v1.0/me/sendMail" -Body $params