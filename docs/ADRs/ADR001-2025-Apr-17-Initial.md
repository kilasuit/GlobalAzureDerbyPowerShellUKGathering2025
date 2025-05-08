---
id: 001
fuid: gh:kilasuit|DocTypes|ADR001
title: Initial
date: 2025-Apr-17
time: 07:05 UTC-0
updatedDate: 2025-Apr-23
updatedTime: 00:30 UTC+1 (UK BST)
attendees: 
- '@kilasuit'
#apologies:
outcome: Partial
impactedAreas: 
- Repo Layout
- Repo Scope
- Tech Used
---
<!-- markdownlint-disable MD025 -->
# 001 - 2025-Apr-17 - Initial

## Status

PartialDecision above 80%

See more in the Accepted , Declined & Deferred sections

## Context

As we move more into the world where more and more people are learning to code, this repo serves as a usable and teachable way of working with Open Source Technologies.
This helps people in the journey to start building their own blog, using technologies widely used in software development.

This repository will provide many potential `teachable moments` and in time will have a `Try this out` section that can be linked to and used to teach the processes in software development, very similarly to the [Learning Paths on Microsoft Learn](https://earn.Microsoft.com) & ideally in future may be something that is linked to as a Learning Path on Microsoft Learn.

As part of initial starting of a project we need to have a project structure along with a number of key decision points, like what technologies we are using and licensing to use.

We should also link to projects that have inspired this as to allow others to goforthwith and have a look at how they've done it.

We should also decide initial scope and what it means to be at a push publicly stage.

## Decision

### Decided by

@kilasuit - Ryan Yates

### Accepted

#### Documentation

This project will have useful AND up to date documentation to the best ability of the team

It will be in British English (i.e. not American English)

We would like at somepoint to build all of this and have it localised for accessibilty and searchability, but that is not an initial goal for the project.

##### Use of ADR's

ADR's (Architecture Decision Records / Any Decision Records) are useful to allow users, including maintainers, to comeback to a project and understand why decisions were made. These can be linked to in Issues, and in comments in  code, allowing reviews at a later date.

ADR's can be either made public or kept private.

In this instance it was decided to make them public as part of the project & this initial ADR layout will be used in future projects as well.

##### Use of IINs, DINs & FINs

This allows others to share theirs directly in this repo.

##### Use of Adopters, Contributors, Contributing, Changelog, InspiredBy

We will detail and make use of Adopters, Contributors, Contributing, Changelog, InspiredBy documents

#### Project Layout

The layout is as following most accepted practices, with a minor change in that all project docs are stored in a docs folder

This project author would like to have used a `.config` folder where all folders like `.vscode` `.github` & other configuration files could be contained but due to most tools expecting them in the root of the project, this not possible and is from a OCD perspective somewhat irritating. We hope future versions of software will allow for configurations to be contained in this location.

Parts of this project will be used as a reference for a project template that can be used when building any new project that you may need.

For more on Repository Templates please see [official GitHub Documentation on them](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)

#### Project Scope

This project scope is to document as many different types of document types that we use in our lives. This may cover areas beyond software development and as such the scope of this project will continually evolve & will link where possible to other locations.

It may require as the project grows either a new layout, or more likely than not better use of metadata, if features in Operating Systems allow for this, as opposed to the simplicity that a hierarchical folder structure gives.

It's main key deliverable, is that of knowledge sharing, and providing areas where there are teachable moments, inclusing the ability for small, minOr changes, to be made by 0th33rs whether they are learsning how to use these technologies, or are seasoned pros that doi this all day ebery dAY.

#### Used Technologies

- VScode
  - VSCode is our editor of choice
  - We use the stable for most work but also make use of the Insiders build too
  - We will share settings in the .vscode folder with recommended extensions and settings, including spellings.

- GitHub
  - We use GitHub to host the public version of this repo
  - We use GitHub Discussions, Issues, PR's and Projects
  - We shall use GitHub Actions in future
  - We may publish to the wiki, however docs files in the repo seems useful enough for now.
  - We may use GitHub Pages for a static website, and this may also dual published to another provider (like Cloudflare Pages) and cached using a service like Cloudflare.
  - We will use GH CLI where possible instead of the Github UI to speed things up
  - We will offer "try this out" paths, similar to [PSKoans](https://github.com/vexx32/PSKoans) as part of this or another repository

Commit flow

- Intend in using branching and PR's but initially will be a push direct to main branch
- PRs should use rebase merges

- Azure DevOps
  - We may use of Azure Repos for a secondary host and either a private version of this repo.
  - We may use Azure Pipelines for additional build and release tasks, particularly those that we may want to keep private
  - We may synchronise Issues to Azure Boards

- Microsoft 365
  - We may make use of Planner and syncronisation mechanism to ensure that anything we track is added to planner boards
  - We may use PowerAutomate in part of marketing this project
  - We may use SharePoint as a backup store
  - We intend to publish some of the document Types here which can be used as templates in SharePoint Content Types.

- CoPilot/AI
  - We will have access to CoPilot/AI tooling.
  - We will make as little use of it as possible.
  - We prefer human reviews and as such will if we get chance to, to disallow AI tools like those that comment in PR's, via repository and editor configurations.
  - This allows for forks of this project, to do as they wish.

#### Project Marketing Plan

In line with other projects, this will be Announced with a post on my blog and posts to Bsky, Twitter (X), LinkedIn & other locations.

This will be when we using git tags mark it with a version and then with this will mark it as a release to GitHub.

We will cover this in conversations we have with Microsoft & would love for this to be a session that could be covered at Microsoft Build.

We will as part of the revival of parts of [Get-PSUGUK (the UK PowerShell UserGroup)](https://powershell.org.uk) which includes the start of the Derby UK PowerShell Group hosting [Global Azure on May 10th 2025](https://globalazure.net/events/ce09464b-fd66-45d9-882d-587dee0b9b10) although the details of that event is TBF (To be Finalised)

### Declined

Large PR's at this time.

### Deferred

What images/logos to use.

#### Long term plans - Post initial release

As there are lots of things we could do so we are deferring this till a Future ADR

### Notes

This repository and others, are part of the research I am doing on personal/business productivity in the world of software development and content creation based on any of the lessons learn in the research, development, deployment, review, continued development & re-deployment process. This is typically known as both ALM (Application Lifecycle Management) or SDLC (Software Development Lifecycle Management)

This will in time be publish and linked to my [public ORCiD profile](https://orcid.org/0009-0009-6030-3517) and will allow for [blog posts](https://blog.kilasuit.org) as well as a number of future presentations on this wider topic.
