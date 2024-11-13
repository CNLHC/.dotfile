Set-PSReadlineOption -EditMode vi
Set-Alias -Name vim -Value nvim
Set-Alias -Name vi -Value nvim
Set-PSReadLineKeyHandler -Chord 'Ctrl+Oem4' -Function ViCommandMode
Invoke-Expression (&starship init powershell)
$env:STARSHIP_CONFIG = "$HOME/.dotfile/starship/default.toml"
