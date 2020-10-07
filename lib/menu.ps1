function display-menu($menu, $action){
    foreach($title in $menu.Keys){
        Write-Host `t`t$title
    }
    Read-Host
}