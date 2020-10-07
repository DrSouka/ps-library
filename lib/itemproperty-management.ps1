function create-key($key){
    write-function 'Key creation ...'
    try
    {
        New-ItemProperty @key -ErrorAction Stop
        write-success 'The key has been created.'
    }
    catch
    {write-error}
}

function remove-key($key){
    write-function 'Key removing ...'
    try
    {
        Remove-ItemProperty -Path $key.Path -Name $key.Name -ErrorAction Stop
        write-success 'The key has been removed.'
    }
    catch
    {write-error}
}

function set-key($key){
    write-function 'Key setting ...'
    try
    {
        Set-ItemProperty -Path $key.Path -Name $key.Name -Value $key.Value -ErrorAction Stop
        write-success 'The key has been setted.'
    }
    catch
    {write-error}
}

function test_key-exists($key){
    write-function 'Key existence test ...'
    try
    {
        Get-ItemProperty -Path $key.Path -Name $key.Name -ErrorAction Stop
        write-info 'The key exists.'
        return $true
    }
    catch
    {
        write-info 'The key does not exist.'
        return $false
    }
}