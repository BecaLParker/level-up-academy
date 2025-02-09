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

  It 'Planets have this order: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune' {
    $allPlanets[0].Name | Should -Be "Mercury"
    $allPlanets[1].Name | Should -Be "Venus"
    $allPlanets[2].Name | Should -Be "Earth"
    $allPlanets[3].Name | Should -Be "Mars"
    $allPlanets[4].Name | Should -Be "Jupiter"
    $allPlanets[5].Name | Should -Be "Saturn"
    $allPlanets[6].Name | Should -Be "Uranus"
    $allPlanets[7].Name | Should -Be "Neptune"
    #TODO: Refactor using -join operator
  }
}