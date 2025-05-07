# Import the ActionableMessages module
Import-Module ActionableMessages
# Import the Microsoft Graph Authentication module
Import-Module Microsoft.Graph.Authentication

# Create an IT resource request card
$card = New-AMCard -OriginatorId "your-originator-id"
$title = New-AMTextBlock -Text "IT Resource Request" -Size "Large" -Weight "Bolder"
$requestDetails = New-AMTextBlock -Text "Please provide details of the resource you need." -Wrap $true
$inputText = New-AMTextInput -Id "resourceDetails" -Placeholder "Enter resource details here"
$submit = New-AMExecuteAction -Title "Submit Request" -Verb "POST" -Url "https://api.example.com/submit" -IsPrimary $true
$actionSet = New-AMActionSet -Id "actionSet" -Actions @($submit)

Add-AMElement -Card $card -Element $title
Add-AMElement -Card $card -Element $requestDetails
Add-AMElement -Card $card -Element $inputText
Add-AMElement -Card $card -Element $actionSet

# Export the card for email
$params = Export-AMCardForEmail -Card $card -Subject "Resource Request" -ToRecipients "morten.kristensen@bestseller.com" -CreateGraphParams

Connect-MgGraph -Scopes "Mail.Send" -NoWelcome
Invoke-MgGraphRequest -Method POST -Uri "https://graph.microsoft.com/v1.0/me/sendMail" -Body $params