$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
. $scriptPath\lib\message.ps1

. $scriptPath\lib\menu.ps1
. $scriptPath\lib\itemproperty-management.ps1

$sShortDate = @{
    Path = 'HKCU:\Control Panel\International'
    Name = 'sShortDate'
    PropertyType = 'String'
    Value = 'ddd d MMM yyy'
}

set-key($sShortDate)

$ShowSecondsInSystemClock = @{
    Path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
    Name = 'ShowSecondsInSystemClock'
    PropertyType = 'DWORD'
    Value = '1'
}

set-key($ShowSecondsInSystemClock)

read-host