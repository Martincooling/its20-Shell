
param(
    $path
)

$licese_file_found = $false

foreach ($i in ls $path) {
    if ($i.Name -eq "LICENSE") {
        $licese_file_found = $true
    }
}

if ($licese_file_found) {
    write-host "Du har varit duktig."
} else {
    write-host "du har slarvat."
}