$message = @{
    Enable = $true
    Type = @{
        Action = @{
            Title = @{
                BackgroundColor = 'Green'
                ForegroundColor = 'White'
            }
            Description = @{
                BackgroundColor = 'DarkGreen'
                ForegroundColor = 'White'
            }
        }
        Info = @{
            Title = @{
                BackgroundColor = 'DarkGray'
                ForegroundColor = 'White'
            }
            Description = @{
                BackgroundColor = 'Gray'
                ForegroundColor = 'Black'
            }
        }
        Function = @{
            Title = @{
                BackgroundColor = 'DarkCyan'
                ForegroundColor = 'White'
            }
            Description = @{
                BackgroundColor = 'DarkCyan'
                ForegroundColor = 'Black'
            }
        }
        Error = @{
            Title = @{
                BackgroundColor = 'Red'
                ForegroundColor = 'White'
            }
            Description = @{
                BackgroundColor = 'DarkRed'
                ForegroundColor = 'White'
            }
        }
    }
}

# Write processing function text
function write-function($text){
    if($message.Enable){
        Write-Host "$($text)" -BackgroundColor $message.Type.Function.Title.BackgroundColor -ForegroundColor $message.Type.Function.Title.ForegroundColor
    }
}

# Write processed function success text
function write-success($text){
    if($message.Enable){
        Write-Host "$($text)" -BackgroundColor $message.Type.Action.Title.BackgroundColor -ForegroundColor $message.Type.Action.Title.ForegroundColor
    }
}

# Write processed test function result text info
function write-info($text){
    if($message.Enable){
        Write-Host "$($text)" -BackgroundColor $message.Type.Info.Title.BackgroundColor -ForegroundColor $message.Type.Info.Title.ForegroundColor
    }
}

# Write processed function error text
function write-error($title){
    if($message.Enable){
        Write-Host 'An error occured:' -BackgroundColor $message.Type.Error.Title.BackgroundColor -ForegroundColor $message.Type.Error.Title.ForegroundColor
        Write-Host $_ -BackgroundColor $message.Type.Error.Description.BackgroundColor -ForegroundColor $message.Type.Error.Description.ForegroundColor
    }
}