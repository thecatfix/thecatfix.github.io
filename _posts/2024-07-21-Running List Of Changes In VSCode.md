---
layout: post
title: "Running List Of Changes In VSCode"
date: 2024-07-21
categories: [Development, Code]
tags: [VSCode, Settings]
---

# Changes in VSCode

- Turning off Popup for Extensions
```json
{
    "extensions.ignoreRecommendations": true,
    "update.mode": "none",
    "telemetry.enableTelemetry": false,
    "workbench.startupEditor": "none",
    "files.associations": {
        "*.myext": "plaintext"
    }
}
```

## What I turned off
**"extensions.ignoreRecommendations": true**

Description: When set to true, this setting disables the recommendations for extensions that VS Code provides. By default, VS Code suggests extensions that might be useful based on the workspace content or the user's activity. This setting turns off those recommendations.

Use Case: Useful if you prefer not to receive extension recommendations or want a cleaner, less distracting interface.



**"update.mode": "none"**

Description: This setting controls the update behavior of VS Code. Setting it to "none" disables all automatic updates for the VS Code application.

Use Case: Suitable for environments where updates need to be managed manually or where stability is prioritized over having the latest features.

**"telemetry.enableTelemetry": false**

Description: When set to false, this setting disables the collection of telemetry data by VS Code. Telemetry data includes usage and error information that helps Microsoft improve the product.
Use Case: Preferred by users who are concerned about privacy and do not want to send usage data to Microsoft.

**"workbench.startupEditor": "none"**

Description: This setting controls what is displayed when VS Code starts up. Setting it to "none" ensures that no editor is opened by default when you start VS Code.
Use Case: Useful if you want a clean workspace on startup and prefer to manually open files or projects after launching VS Code.

**"files.associations": { "*.myext": "plaintext" }**

Description: This setting allows you to specify custom file associations. Here, it associates files with the .myext extension with the plaintext language mode.
Use Case: Useful for handling custom file types or extensions that VS Code does not recognize by default. By associating them with a specific language mode, you can ensure proper syntax highlighting and behavior.


## Summary
"extensions.ignoreRecommendations": true: Disables extension recommendations.
"update.mode": "none": Disables automatic updates for VS Code.
"telemetry.enableTelemetry": false: Disables telemetry data collection.
"workbench.startupEditor": "none": Starts VS Code with no editor open by default.
"files.associations": { "*.myext": "plaintext" }: Associates files with the .myext extension to open in plaintext mode.
These settings customize VS Code to suit specific preferences and needs, offering control over updates, privacy, startup behavior, and file handling. By adjusting these settings, you can tailor the VS Code experience to better match your workflow and environment. 


