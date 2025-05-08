# ADR-Process

This documents the ADR Process we have in use

TODO: Add diagram.
TODO: add ADR template

## Why

It is important to document decisions made as a project evolves over time, particularly as it gains adoption so that when issues/discussions are raised where there are decisions around a the maintainers, collaborators, or others in the community can point back in time.

This has an evolved version of the Project Manager role where you also have experience in Architecture & Design of software and should be used by whoever sees fit to use them, though People with the following Job Titles are common examples of individuals who may be tasked with writing these particular docs

- Project Architect (which may be know as Project/Programme Manager)
- Software Architect/Developer
- Consultant
- IT Practitioner
- DevOps/Platform Engineer
- Site Reliability Engineer
- Systems Administrator
- Trainer

The Following is the Process and template that we will use for ADR's going forward

### FileName & ID

The filename & ID will be as follows `ADR<Number>-<yyyy-MMM-dd>-<Reason>`

For example starting with `ADR001-2024-Dec-12-Initial`

We use markdown, so these will be `.md` files but they could be `.doc` or `.pdf` or any other format.

We use the 3 characters for the Month as to most this likely is more mentally accessible (at a quick glance) than the 2 digit number is & reduces likelihood of long file path issues on Windows systems.

If there are mulitiple similar ADR's in a day, then we can either update the ADR, or add a seperate ADR, with preference to add a new one, as opposed to update an existing one as this can be used for additional learning opportunities & better documents how and why changes have been decided.

### Sample ADR

The below is a sample ADR Layout and all ADR's **should** contain the below sections

Time **must** be added like below (using UTC + offset) and date **must** use yyyy-MMM-dd as this can be used when querying the frontmatter

If there are updates, then add these in the notes & add a updatedDate, updatedTime, updatedReason & updatedBy to the frontmatter

``` markdown
---
id: <ADR Number>
title: Initial
date: 2024-Dec-12
time: 07:05 UTC-0
attendees: 
- @kilasuit
# apologies:
outcome: PartialDecision (>80%)
impactedAreas: 
- Repo Layout
- Repo Scope
- Tech Used
---
<!-- markdownlint-disable MD025 -->
# 001 - 2024-Dec-12 - Initial

## Status

Accepted,Declined,Deferred

## Context

Add in any relevant context, for example any Issues/Discussions that are relevant.

## Discussed by
<!-- Add in any attendees, using thier handle/email address and their Name like below -->
@kilasuit - Ryan Yates

## Decision

### Accepted 

#### Project Layout

As this is a project that will have multiple similar releasable artifacts, it was decided to have them all togeter in this repo.

#### Project Scope

This project will only have items relating to building/using vscode extensions.

It likely will include sample `.vscode` files, including sample VSCode Profile configurations.

#### Used Technologies

- VScode
  - As this is a VSCode related repo we will use vscode and st
- GitHub
  - We use GitHub to host the public version of this repo
  - We use GitHub Issues, PR's and Projects
  - We may use GitHub Actions in future
- Azure DevOps
  - We make use of Azure Repos for a secondary host and the private version of this repo
  - We use Azure Pipelines for build and release
  - We intend to synchronise Issues to Azure Boards

### Declined

Declined publishing publicly at this time 

### Deferred

When to publish publicly

### Notes

Add in any notes including comments made in the decision process

```

### Publishing ADR's

If a project needs to ADR's can be published to any static generated website.

### Reusing this process

The ADR process can also be used as a framework for publishing outcomes from meetings you may have as part of maintaining a project or across projects as part of a member of Working Groups.
