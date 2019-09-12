# Base64String - Convert text from/to Base 64 String

[![PowerShell 3](https://dev.azure.com/Stadub-Gh/PowershellScripts/_apis/build/status/SharedFunctions?branchName=master)](https://dev.azure.com/Stadub-Gh/PowershellScripts/_build/latest?definitionId=6&branchName=master)
[![PowerShell 4, 5 & Core on Windows build](https://ci.appveyor.com/api/projects/status/7nunpf138bmp7ogf/branch/master?svg=true)](https://ci.appveyor.com/project/stadub/powershellscripts-v9ncj/branch/master)
[![Linux & MacOS build](https://img.shields.io/travis/stadub/PowershellScripts/master.svg?label=linux/macos+build)](https://travis-ci.org/stadub/PowershellScripts)
[![latest version](https://img.shields.io/powershellgallery/v/Base64String.svg?label=latest+version)](https://www.powershellgallery.com/packages/Base64String/)
[![downloads](https://img.shields.io/powershellgallery/dt/Base64String.svg?label=downloads)](https://www.powershellgallery.com/packages/Base64String)
<!-- [Documentation](https://powershellscripts.readthedocs.io/en/latest/) -->
[![https://www.powershellgallery.com/packages/Base64String/](https://img.shields.io/badge/PowerShell%20Gallery-download-blue.svg?style=popout&logo=powershell)](https://www.powershellgallery.com/packages/Base64String/)
---------------------

![ConsoleDemo](https://github.com/stadub/PowershellScripts/raw/master/Shared-Functions/Base64String/Assets/demo.gif)

## Commands

```powershell
ConvertFrom-Base64String
  [-EncodedValue] <string>

ConvertTo-Base64String
  [-Value] <string>

```

## Aliases

| Cmdlet           | Alias |
| -----------------|:-----:|
| ConvertTo-Base64String   | encode64   |
| ConvertFrom-Base64String | decode64    |

## Usage

Convert text to Base64 String:

```powershell
/> ConvertFrom-Base64String "text"
```

```powershell
/> echo "text" | decode64
```

Convert text from Base 64 String:

```powershell
/> ConvertTo-Base64String
```

```powershell
/> echo "text" | encode64
```

## Instalation

Powershell Gallery:

`PowerShellGet` Installation :

```powershell
Install-Module -Name Base64String
```

Direct download instalation:

```powershell
iex ('$module="Shared-Functions/Base64String"'+(new-object net.webclient).DownloadString('https://raw.githubusercontent.com/stadub/PowershellScripts/master/install.ps1'))
```

Module import:

```powershell
Import-Module Base64String
```


## Changelog

### [v1.0.0](https://github.com/stadub/PowershellScripts/releases/tag/v0.10.0) Spep 12, 2019

* Created functions

```powershell
ConvertFrom-Base64String
  [-EncodedValue] <string>

ConvertTo-Base64String
  [-Value] <string>

```

* Created unit tests

### Suggestions and feedback

If you have any idea or suggestion - please add a github issue.