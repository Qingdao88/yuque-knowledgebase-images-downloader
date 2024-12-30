
$file1 = "image1.png"
$file2 = "image2.png"

$hash1 = (Get-FileHash -Path $file1 -Algorithm SHA256).Hash
$hash2 = (Get-FileHash -Path $file2 -Algorithm SHA256).Hash

Write-Host $hash1
Write-Host $hash2

# 比较哈希值
if ($hash1 -eq $hash2) {
    Write-Host "Files are identical."
} else {
    Write-Host "Files are different."
}
