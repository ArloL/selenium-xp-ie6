function Unzip($zip, $destination) {
    $shell = New-Object -COMObject "Shell.Application"
    $zip = $shell.NameSpace($zip)
    foreach($item in $zip.items()) {
        $target = "$($destination)\$($item.Path)"
        if (!(Test-Path $target)) {
            $shell.NameSpace($destination).CopyHere($item)
        }
    }
}
