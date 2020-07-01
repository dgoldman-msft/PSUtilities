Function Get-ModulePath
{
	<#
		.Synopsis
            Cmdlet for dumping out module paths

		.Description
            Helper function for dumping out module paths

        .Example
            PS c:\> Get-ModulePath

        .Notes
            NOTE: You can not pull up the help information until the object has been imported
	#>

	[Alias('gmp')]
	[CmdletBinding(DefaultParameterSetName = "Default")]
	param()

	begin{}
	process
	{
		Write-PSFMessage -Level Verbose -Message "Getting Module Paths"
		"-" * 20
		$env:PSModulePath -split ";"
	}
	end{}
}