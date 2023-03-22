Clear-Content "darkened.html"
Add-Content -Path "darkened.html" -Value @"
<!DOCTYPE html>

<html>
    <head>
        <title>darkened</title>
        <link rel="shortcut icon" href="images/darkened_ico.ico" type="ico">
    </head>
    <body>
"@
Get-ChildItem ".\images\darkened" |
ForEach-Object {
    $val = '<img src="./images/darkened/'+$_.Name+'" border="2" width="1280">'
    Add-Content -Path ".\darkened.html" -Value $val
}
Add-Content -Path ".\darkened.html" -Value @"
    </body>
</html>
"@