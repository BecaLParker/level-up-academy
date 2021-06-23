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

  
}