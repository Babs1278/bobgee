Describe "Test for 17_mad_libs" {
    BeforeAll {
        $Script:prg = ".\mad.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test fox" -skip {
        $fox = '.\fox.txt'

        $actual = &$Script:prg $fox -i surly, car, under, bicycle

        $actual | Should -BeExactly 'The quick surly car jumps under the lazy bicycle.'
        # args = f'{fox} -i surly car under bicycle'
        # rv, out = getstatusoutput(f'{prg} {args}')
        # assert rv == 0
        # assert out.strip() == 'The quick surly car jumps under the lazy bicycle.'
    }
}
