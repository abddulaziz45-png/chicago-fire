# GitHub Desktop'ı aç ve projeyi ekle
Write-Host "GitHub Desktop'ı açıyorum..." -ForegroundColor Yellow

# GitHub Desktop'ın yaygın kurulum yolları
$githubDesktopPaths = @(
    "$env:LOCALAPPDATA\GitHubDesktop\GitHubDesktop.exe",
    "$env:ProgramFiles\GitHub Desktop\GitHubDesktop.exe",
    "$env:ProgramFiles(x86)\GitHub Desktop\GitHubDesktop.exe",
    "$env:USERPROFILE\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
)

$found = $false
foreach ($path in $githubDesktopPaths) {
    if (Test-Path $path) {
        Write-Host "GitHub Desktop bulundu: $path" -ForegroundColor Green
        Start-Process $path
        $found = $true
        break
    }
}

if (-not $found) {
    Write-Host "GitHub Desktop bulunamadı!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Lütfen GitHub Desktop'ı indirin:" -ForegroundColor Yellow
    Write-Host "https://desktop.github.com/" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "İndirdikten sonra bu scripti tekrar çalıştırın." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "VEYA tarayıcınızda şu adresi açın:" -ForegroundColor Yellow
    Write-Host "https://desktop.github.com/" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GitHub Desktop'ta yapmanız gerekenler:" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. GitHub Desktop açıldıktan sonra:" -ForegroundColor Yellow
Write-Host "   File → Add Local Repository" -ForegroundColor White
Write-Host ""
Write-Host "2. 'Choose...' butonuna tıklayın" -ForegroundColor Yellow
Write-Host "   Şu klasörü seçin:" -ForegroundColor White
Write-Host "   A:\POLITO\DIGIITAL HERITAGE\chicago fire" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. 'Add repository' tıklayın" -ForegroundColor Yellow
Write-Host ""
Write-Host "4. Sol üstte 'Publish repository' butonuna tıklayın" -ForegroundColor Yellow
Write-Host ""
Write-Host "5. Repository adı: chicago-fire" -ForegroundColor Yellow
Write-Host "   'Keep this code private' KAPALI olmalı (Public!)" -ForegroundColor Yellow
Write-Host ""
Write-Host "6. 'Publish repository' tıklayın" -ForegroundColor Yellow
Write-Host ""
Write-Host "7. GitHub'da repository'nize gidin:" -ForegroundColor Yellow
Write-Host "   Settings → Pages → Deploy from branch → main → Save" -ForegroundColor White
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

if ($found) {
    Write-Host "GitHub Desktop açıldı! Yukarıdaki adımları takip edin." -ForegroundColor Green
} else {
    Write-Host "GitHub Desktop'ı indirip kurduktan sonra bu scripti tekrar çalıştırın." -ForegroundColor Yellow
}

Read-Host "Press Enter to exit"

