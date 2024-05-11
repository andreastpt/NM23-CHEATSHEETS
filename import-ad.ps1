Import-Csv .\ad_users.csv |ForEach-Object {
    $commonName = $_.'Common Name'
    $officeLocation = $_.'Office Location'
    $phoneNumber = $_.'Phone'
    $password = $_.'Password'
    $userName = $commonName.Replace(" ", ".").ToLower()
    $userPrincipalName = "$username@eestiasi.ee"
    $email = $_.'Upn'

    New-ADUser `
        -SamAccountName $userName `
        -UserPrincipalName $userPrincipalName `
        -Name $commonName `
        -GivenName ($commonName -split ' ')[0] `
        -Surname ($commonName -split ' ')[1] `
        -Office $officeLocation `
        -OfficePhone $phoneNumber `
        -EmailAddress $email `
        -DisplayName $commonName `
        -Description $commonName `
        -AccountPassword (ConvertTo-SecureString -AsPlainText $password -Force) `
        -Enabled $true
}

# alt+96 for ` symbol