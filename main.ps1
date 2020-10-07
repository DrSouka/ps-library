$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
. $scriptPath\lib\message.ps1

. $scriptPath\lib\menu.ps1
. $scriptPath\lib\itemproperty-management.ps1

$menu = @{
    Customise = @{
        Title = 'Custom Desktop'
    }
    Profiles = @{
        Title = 'Profiles'
    }
    Quit = @{
        Title = 'Quit'
    }
}

$action = 'Quit'
display-menu $menu, $action

$keyTest = @{
    Path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion'
    Name = 'Test3'
    PropertyType = 'String'
    Value = 'yey j suis tombé love'
}