Describe "Get-Planets" {
  BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
  }

  It 'Lists all planets by default' {
    $allPlanets = Get-Planets
    $allPlanets.Count | Should -Be 8
  }

  It 'Earth is the third planet in our Solar System' {
    $allPlanets = Get-Planets
    $allPlanets[2].Name | Should -Be "Earth"
  }
}