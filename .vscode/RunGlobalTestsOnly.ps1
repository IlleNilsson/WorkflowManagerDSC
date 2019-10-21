Import-Module (Join-Path $PSScriptRoot "..\Tests\Unit\WorkflowManagerDsc.TestHarness.psm1")

$DscTestsPath = Join-Path $PSScriptRoot "..\Modules\WorkflowManagerDsc\DscResource.Tests"
if ((Test-Path $DscTestsPath) -eq $false) {
    throw "Unable to locate DscResource.Tests repo at '$DscTestsPath', common DSC resource tests will not be executed"
}
Import-Module (Join-Path $PSScriptRoot "..\Modules\WorkflowManagerDsc\WorkflowManagerDsc.Tests\TestHelper.psm1")

Set-Location -Path (Join-Path $PSScriptRoot "..\Modules\WorkflowManagerDsc\DscResource.Tests")

Invoke-Pester
