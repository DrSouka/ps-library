function set-rules($item, $userRules){
    write-function "'$($item.Name)' item permissions setting ..."
    
        $itemFullName = "$($item.Path)\$($item.Name)"

        $rules = New-Object System.Security.AccessControl.FileSystemAccessRule @userRules

        $acl = Get-Acl $itemFullName
	$acl.SetAccessRuleProtection($True, $False)
        $acl.SetAccessRule($rules)
	Set-Acl -Path $itemFullName -AclObject $acl
}

function get-rules-info($item){
    write-function "Getting '$($item.Name)' item permissions ..."

    try
    {
        $itemFullName = "$($item.Path)\$($item.Name)"

        $acl = Get-Acl $itemFullName
        $acl.Access
    }
    catch
    {write-error}
}