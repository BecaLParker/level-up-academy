Describe "Get-Planets" {
  BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
    $allPlanets = Get-Planets
  }

  It 'Lists all planets by default' {
    $allPlanets.Count | Should -Be 8
  }

  It 'Earth is the third planet in our Solar System' {
    $allPlanets[2].Name | Should -Be "Earth"
  }

  It 'Pluto is not part of our Solar System' {
    $allPlanets.Name -contains 'Pluto' | Should -Be false
    # or
    Get-Planets "Pluto" | Should -Be $null
    # TODO use the  `Where-Object` CmdLet.
    # $allPlanets | Where-Object { $_.Name -like "Earth" } | Should -BeEmptyOrNull
  }
}