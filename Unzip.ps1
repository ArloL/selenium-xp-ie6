function Unzip($zip, $destination, $overwrite = $false) {
    $shell = New-Object -COMObject "Shell.Application"
    $zip = $shell.NameSpace($zip)
    foreach($item in $zip.items()) {
        $target = "$($destination)\$($item.Path)"
        if ($overwrite) {
            Remove-Item $target -Recurse -Force
        }
        if (!(Test-Path $target)) {
            $shell.NameSpace($destination).CopyHere($item)
        }
    }
}
