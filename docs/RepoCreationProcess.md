# Repo Creation Process

Using GitHub as a event platform, for small events, especially those that are internal or hackathon type events would work really well, especially if your team/the team youa re working with is already accustomed to the tooling in GitHub.

What makes it useful then.

- Issues & Issue Templates
  - like the [Presentation Request Template](https://github.com/kilasuit/GlobalAzureDerbyPowerShellUKGathering2025/issues/new?template=presentationRequest.yml)
- Issue/PR Labelling
  - Whether this is done manually, fully automated or semi-automated
- Projects
  - Or other planning tools like Azure Boards & Microsoft Planner.
- Actions & Workflows
  - Whether in GitHub or in other CI/CD Tooling like Azure Repos

It likely works well with a team where you have agents running in your environmnet that can send notifications across the network to your users, perhaps using the [PowerShell Burnt Toast Module](https://github.com/Windos/BurntToast) that hooks into Toast Notifications in the Action Centre.

## Sample code used for this event\repo

### Repo creation (not from template)

```powershell
$type = 'public|private|internal'
$description = 'a repo for managing a virtual or in person event with some samples fo doing automations in GH using GH CLI and issue, workflows, projects etc'
$name = 'kilasuit/GlobalAzureDerbyPowerShellUKGathering2025'
$license = "MIT"
gh repo create $name --$Type --add-readme --disable-wiki --description $description --license $license
```

### Repo creation from template

`gh repo create kilasuit/TheNextEvent --template kilasuit/GlobalAzureDerbyPowerShellUKGathering2025 --public`

### Label creation

```powershell
function Get-RandomGHColourCode {
     -join ((65..70) + (48..57) | Get-Random -Count 6 | ForEach-Object {[char]$_})
}
## This ran at about 36 seconds
1..39 | {
  $description = "Label for session at hour $_ of the event"
  $repo = "kilasuit/GlobalAzureDerbyPowerShellUKGathering2025"
  gh label create "Hour-$_" --color (Get-RandomGHColourCode) --description $description --repo $repo
}
```

```powershell
### this ran at about 12seconds so much quicker
1..39 | % -parallel {
  function Get-RandomGHColourCode {
     -join ((65..70) + (48..57) | Get-Random -Count 6 | ForEach-Object {[char]$_})
}
$description = "2nd Label for session at hour $_ of the event"
  $repo = "kilasuit/GlobalAzureDerbyPowerShellUKGathering2025"
  gh label create "Hour-$_-2nd" --color (Get-RandomGHColourCode) --description $description --repo $repo
} | Wait-Job | Receive-Job | Remove-Job
```

### project creation

### issue creation for each 1hour segment 


gh issue create -R kilasuit/GH_AutomationTooling --title 'Invoke-IssueCopy' --assignee 'kilasuit' --body 'Look at a bulk issue copy between projects in different organisations - must use pipelining and threads to pull all the content possible and stream it to the new repo' --project 'Global Azure Sessions'

```powershell
1..39 | % -parallel {
  $project = 'Global Azure Sessions'
  $
  $repo = "kilasuit/GlobalAzureDerbyPowerShellUKGathering2025"
  gh issue create "Hour-$_" -- --description $description --repo $repo --body '' --label "Hour-$_"
} | Wait-Job | Receive-Job | Remove-Job
