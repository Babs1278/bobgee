Describe "Test for 20_password" {
    BeforeAll {
        $Script:prg = ".\password.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }
}
