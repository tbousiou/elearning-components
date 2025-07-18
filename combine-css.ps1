Write-Host "Combining CSS files..."

"/* General Styles */" | Out-File -FilePath "style.css" -Encoding UTF8
Get-Content "general.css" | Out-File -FilePath "style.css" -Append -Encoding UTF8
"" | Out-File -FilePath "style.css" -Append -Encoding UTF8
"/* Components Styles */" | Out-File -FilePath "style.css" -Append -Encoding UTF8
Get-Content "components.css" | Out-File -FilePath "style.css" -Append -Encoding UTF8
"" | Out-File -FilePath "style.css" -Append -Encoding UTF8
"/* Flipcards Styles */" | Out-File -FilePath "style.css" -Append -Encoding UTF8
Get-Content "flipcards.css" | Out-File -FilePath "style.css" -Append -Encoding UTF8

Write-Host "CSS files combined successfully!" -ForegroundColor Green