# Generated by: Dmitry Stadub

@{

    ModuleVersion = '1.0.1'
        
    # ID used to uniquely identify this module
    GUID = 'e7bfdc17-9739-4bce-80f3-8eb90d7bc836'
    
    # Author of this module
    Author = 'Dmitry Stadub'
    
    # Company or vendor of this module
    CompanyName = ''
    
    # Copyright statement for this module
    Copyright = '(c) Dmitry Stadub. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = 'Base 64String Encoder/Decoder.
       Full documentation at the Github: https://github.com/stadub/PowershellScripts/tree/master/Shared-Functions/Base64String
    '
    NestedModules = @('Aliases.ps1','Base64String.ps1')
    #RootModule = "Base64String.psm1"
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @('*')
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = @('ConvertTo-Base64String', 'ConvertFrom-Base64String')
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @('*')
        
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('Base64String','Base64', 'encode','decode', 'encode64', 'decode64', 'encodeText')
    
            # A URL to the license for this module.
            LicenseUri = 'http://opensource.org/licenses/MIT'
    
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/stadub/PowershellScripts/tree/master/Shared-Functions/Base64String'
    
            # A URL to an icon representing this module.
            IconUri = 'https://raw.githubusercontent.com/stadub/PowershellScripts/master/Shared-Functions/Base64String/Assets/Icon.ico'
    
            # ReleaseNotes of this module
            ReleaseNotes = '
                * Update icon
                * Created functions `ConvertTo-Base64String`  and `ConvertFrom-Base64String`
                * Created unit tests
            '
    
        }
    
    }
    

    HelpInfoURI = 'https://github.com/stadub/PowershellScripts/tree/master/Shared-Functions/Base64String/README.md'
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
    
    }
    
    