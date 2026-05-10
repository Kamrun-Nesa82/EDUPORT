
$paths = @(
"./assets/images/logo/logo.svg",
"./assets/images/bg/3by4/07.jpg",
"./assets/images/bg/3by4/06.jpg",
"./assets/images/bg/3by4/05.jpg",
"./assets/images/element/17.svg",
"./assets/images/bg/3by4/01.jpg",
"./assets/images/bg/3by4/02.jpg",
"./assets/images/bg/3by4/03.jpg",
"./assets/images/bg/3by4/04.jpg",
"./assets/images/bg/3by4/08.jpg",
"./assets/images/instructor/01.jpg",
"./assets/images/instructor/02.jpg",
"./assets/images/instructor/03.jpg",
"./assets/images/instructor/06.jpg",
"./assets/images/instructor/07.jpg",
"./assets/images/instructor/08.jpg",
"./assets/images/instructor/10.jpg",
"./assets/images/instructor/11.jpg",
"./assets/images/courses/4by3/08.jpg",
"./assets/images/courses/4by3/02.jpg",
"./assets/images/courses/4by3/03.jpg",
"./assets/images/courses/4by3/11.jpg",
"./assets/images/courses/4by3/06.jpg",
"./assets/images/logo/logo.svg"
)

foreach ($path in $paths) {
    $cleanPath = $path.Replace("./", "")
    if (Test-Path $cleanPath) {
        # Check case sensitivity
        $item = Get-Item $cleanPath
        if ($item.FullName.Replace("\\", "/") -match ($cleanPath -replace "/", "\\/")) {
            # Case matches (mostly, match is case insensitive by default but let's be sure)
        }
        Write-Output "Path: $path, RealPath: $($item.FullName)"
    } else {
        Write-Output "MISSING: $path"
    }
}
