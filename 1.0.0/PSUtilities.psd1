﻿#
# Module manifest for module 'PSUtilities'
#
# Generated by: Dave Goldman
#
# Generated on: 46/29/2020
#

@{
	# Script module or binary module file associated with this manifest
	RootModule = 'PSUtilities.psm1'

	# Version number of this module.
	ModuleVersion = '1.0.0'

	# ID used to uniquely identify this module
	GUID = '30a89410-c344-40c5-9001-02eab8fac78b'

	# Author of this module
	Author = 'Dave Goldman'

	# Company or vendor of this module
	CompanyName = ' '

	# Copyright statement for this module
	Copyright = 'Copyright (c) 2020 Dave Goldman'

	# Description of the functionality provided by this module
	Description = 'PSUtilities'

	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '5.0'

	# Modules that must be imported into the global environment prior to importing this module
	# RequiredModules = @(@{ ModuleName='PSFramework'; ModuleVersion='1.1.59' })

	# Assemblies that must be loaded prior to importing this module
	# RequiredAssemblies = @('bin\PSUtilities.dll')

	# Type files (.ps1xml) to be loaded when importing this module
	# Expensive for import time, no more than one should be used.
	# TypesToProcess = @('xml\PSUtilities.Types.ps1xml')

	# Format files (.ps1xml) to be loaded when importing this module.
	# Expensive for import time, no more than one should be used.
	FormatsToProcess = @(
	'xml\PSUtilities.Sessions.ps1xml'
	'xml\PSUtilities.Jobs.ps1xml')

	# Functions to export from this module
	FunctionsToExport = @(
	'Get-Sessions'
	'Get-JobTypes')

	# Cmdlets to export from this module
	CmdletsToExport = ''

	# Variables to export from this module
	VariablesToExport = ''

	# Aliases to export from this module
	AliasesToExport = @(
	'gmp'
	'gjt')

	# List of all files packaged with this module
	FileList = @()

	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData = @{

		#Support for PowerShellGet galleries.
		PSData = @{

			# Tags applied to this module. These help with module discovery in online galleries.
			Tags = @('Utilities')

			# A URL to the license for this module.
			# LicenseUri = ''

			# A URL to the main website for this project.
			ProjectUri = 'https://github.com/dgoldman-msft/PSUtilities'

			# A URL to an icon representing this module.
			# IconUri = ''

			# ReleaseNotes of this module
			# ReleaseNotes = ''

		} # End of PSData hashtable

	} # End of PrivateData hashtable
}