$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\Functions.ps1"


Describe "Remove-AllPSBookmarks" {

    It "clear all bookmarks" {
        $_marks["a"]="A"
        $_marks["b"]="B"

        $_marks.Count | Should -Not -Be 0

        Mock -CommandName Import-Csv -MockWith {} -Verifiable
        Mock -CommandName Export-Csv -MockWith {} -Verifiable

        Remove-AllPSBookmarks

        $_marks.Count | Should -Be 0
    }
}

Describe "Add-PSBookmark" {

    It "adds current folder to bookmarks" {
        Mock -CommandName Import-Csv -MockWith {} -Verifiable
        Mock -CommandName Export-Csv -MockWith {} -Verifiable

        Set-Location $here
        Add-PSBookmark testDir
        $_marks.Count | Should -Be 1
        $_marks.Keys | Should -Be "testDir"
        $_marks.Values | Should -Be $here
    }

    It "adds selected folder to bookmarks" {
        Mock -CommandName Import-Csv -MockWith {} -Verifiable
        Mock -CommandName Export-Csv -MockWith {} -Verifiable

        Add-PSBookmark testDir "c:"
        $_marks = Get-PSBookmarks 
        $_marks.Count | Should -Be 1
        $_marks.Keys | Should -Be "testDir"
        $_marks.Values | Should -Be "c:"
    }

    It "adds path from pipeline to bookmarks" {
        Mock -CommandName Import-Csv -MockWith {} -Verifiable
        Mock -CommandName Export-Csv -MockWith {} -Verifiable

        "c:" |Add-PSBookmark testDir 
        $_marks = Get-PSBookmarks 
        $_marks.Count | Should -Be 1
        $_marks.Keys | Should -Be "testDir"
        $_marks.Values | Should -Be "c:"
    }
}


Describe "Remove-PSBookmark" {

    It "remove bookmark from list" {
        $_marks = @{ }
        $_marks["a"]="A";

        Mock -CommandName Import-Csv -MockWith {}
        Mock -CommandName Export-Csv -MockWith {}

        Mock -CommandName Restore-PSBookmarks -MockWith {} -Verifiable
        Mock -CommandName Save-PSBookmarks -MockWith {} -Verifiable
        
        $_marks.Count | Should -Be 1
        $_marks.Keys[0] | Should -Be "a"
        $_marks.Values[0] | Should -Be "A"

        Remove-PSBookmark  "a"

        $_marks.Count | Should -Be 0

        Assert-VerifiableMock
    }

}

Describe "Open-PSBookmark" {

    It "open specific bookmark" {
        $_marks = @{ }
        $_marks["a"]="A";

        Mock -CommandName Import-Csv -MockWith {} -Verifiable
        Mock -CommandName Export-Csv -MockWith {} -Verifiable

        Mock -CommandName Set-Location -MockWith {} 
    
        Open-PSBookmark "a"

        Assert-MockCalled Set-Location 1 

    }
}