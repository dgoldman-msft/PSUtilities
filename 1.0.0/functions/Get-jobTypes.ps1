function Get-JobTypes {
	<#
		.Synopsis
			Custom PowerShell Job reporter

		.Description
			This is a wrapper function for Get-Job and Receive-Job with a custom display

		.Example
			Get-JobTypes | Format-Table

		.Example
			GJT | Format-Table

		.Notes
			NOTE: This output uses a custom ps1xml file PowerShellUtilities.Job
			https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_format.ps1xml?view=powershell-7
	#>

	[Alias('gjt')]
	[CmdletBinding(DefaultParameterSetName = "Default")]
	param()

	process {
		try {
			$index = 0
			foreach ($job in (Get-Job)) {
				# Store the job so we can display it with a custom display - 16 properties
				[PSCustomObject]@{
					PSTypeName        = 'PSUtilities.Jobs'
					Index             = $index
					Name              = $job.Name
					'Job Id'          = $job.id
					'Job Start Time'  = $job.PSBeginTime
					'Job End Time'    = $job.PSEndTime
					'Child Job Id(s)' = $job.ChildJobs
					'Job Type'     = $job.PSJobTypeName
					'Job State'       = $job.State
					'Contains Data'   = $job.HasMoreData
					Executed          = $job.Location
					Command           = $job.Command
					Data              = (Receive-Job -Name $job.Name -Keep)
					'Status Message'  = $job.StatusMessage
					'Job Warning'     = $job.Warning
					'Job Error'       = $job.Error
    }
				$index++
			}
		}
		catch {
			Stop-PSFFunction -Message "ERROR: Get-Job failure" -Cmdlet $PSCmdlet -ErrorRecord $_
		}
	}
}
