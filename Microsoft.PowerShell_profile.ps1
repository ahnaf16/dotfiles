function src { . $PROFILE }

function f { fvm flutter @args }
function d { fvm dart @args }

function fget { fvm flutter pub get }
function fup { fvm flutter pub upgrade }
function fupM { fvm flutter pub upgrade --major-versions }
function fcls { fvm flutter clean && fvm flutter pub get }
function fbrb { fvm dart run build_runner build -d }
function fbrw { fvm dart run build_runner watch -d }


function openex {
    Start-Process explorer.exe -ArgumentList (Get-Location)
}

function touch {
    param (
        [string]$Path
    )
    
    if (-Not (Test-Path $Path)) {
        # If the file doesn't exist, create it
        New-Item -Path $Path -ItemType File -Force | Out-Null
    } else {
        # If the file exists, update the last modified time
        (Get-Item $Path).LastWriteTime = Get-Date
    }
}


Invoke-Expression (&starship init powershell)
