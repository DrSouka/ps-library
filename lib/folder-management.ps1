function create-directory($directory){
    write-function "'$($directory.Name)' directory creation ..."
    try
    {
        New-Item @directory -ErrorAction Stop
        write-success "'$($directory.Name)' directory has been created."
    }
    catch
    {write-error}
}

function test_directory-exists($directory){
    write-function "'$($directory.Name)' directory existence test ..."

    $directoryFullName = "$($directory.Path)\$($directory.Name)"

    if(Test-Path $directoryFullName){
        write-info "'$($directory.Name)' directory already exists."
        return $true
    }
    else
    {
        write-info "'$($directory.Name)' directory does not exist."
        return $false
    }
}