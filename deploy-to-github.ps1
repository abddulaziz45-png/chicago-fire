# GitHub Deployment Script for Chicago Fire Project
# This script will help you deploy your project to GitHub Pages

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GitHub Deployment Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
try {
    $gitVersion = git --version
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git first:" -ForegroundColor Yellow
    Write-Host "1. Download from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "2. Install with default settings" -ForegroundColor Yellow
    Write-Host "3. Restart this script after installation" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit
}

Write-Host ""
Write-Host "Step 1: Initializing Git repository..." -ForegroundColor Yellow

# Initialize Git if not already initialized
if (-not (Test-Path .git)) {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✓ Git repository already exists" -ForegroundColor Green
}

Write-Host ""
Write-Host "Step 2: Adding all files..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "Step 3: Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Chicago Fire Digital Heritage Project" 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Initial commit created" -ForegroundColor Green
} else {
    Write-Host "⚠ No changes to commit (files may already be committed)" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Step 4: Setting up main branch..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Main branch set" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Go to GitHub.com and create a new repository:" -ForegroundColor Yellow
Write-Host "   - Click '+' → 'New repository'" -ForegroundColor White
Write-Host "   - Name it: chicago-fire (or your preferred name)" -ForegroundColor White
Write-Host "   - Make it PUBLIC (required for free GitHub Pages)" -ForegroundColor White
Write-Host "   - DO NOT initialize with README" -ForegroundColor White
Write-Host "   - Click 'Create repository'" -ForegroundColor White
Write-Host ""
Write-Host "2. After creating the repository, GitHub will show you commands." -ForegroundColor Yellow
Write-Host "   Copy the repository URL (it looks like: https://github.com/USERNAME/REPO.git)" -ForegroundColor White
Write-Host ""
Write-Host "3. Run this command (replace URL with your repository URL):" -ForegroundColor Yellow
Write-Host "   git remote add origin https://github.com/USERNAME/REPO.git" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "4. Enable GitHub Pages:" -ForegroundColor Yellow
Write-Host "   - Go to your repository on GitHub" -ForegroundColor White
Write-Host "   - Click 'Settings' → 'Pages'" -ForegroundColor White
Write-Host "   - Source: 'Deploy from a branch'" -ForegroundColor White
Write-Host "   - Branch: 'main', Folder: '/ (root)'" -ForegroundColor White
Write-Host "   - Click 'Save'" -ForegroundColor White
Write-Host ""
Write-Host "5. Your site will be live at:" -ForegroundColor Yellow
Write-Host "   https://USERNAME.github.io/REPO-NAME/" -ForegroundColor Cyan
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Ask if user wants to add remote now
$addRemote = Read-Host "Do you have your GitHub repository URL ready? (y/n)"
if ($addRemote -eq "y" -or $addRemote -eq "Y") {
    $repoUrl = Read-Host "Enter your GitHub repository URL (e.g., https://github.com/username/repo.git)"
    if ($repoUrl) {
        Write-Host ""
        Write-Host "Adding remote repository..." -ForegroundColor Yellow
        git remote add origin $repoUrl 2>&1 | Out-Null
        if ($LASTEXITCODE -eq 0) {
            Write-Host "✓ Remote repository added" -ForegroundColor Green
            Write-Host ""
            Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
            git push -u origin main
            if ($LASTEXITCODE -eq 0) {
                Write-Host ""
                Write-Host "✓ Successfully pushed to GitHub!" -ForegroundColor Green
                Write-Host ""
                Write-Host "Now enable GitHub Pages in repository settings!" -ForegroundColor Yellow
            } else {
                Write-Host "✗ Error pushing to GitHub. Please check your repository URL and try again." -ForegroundColor Red
            }
        } else {
            Write-Host "⚠ Remote already exists or error occurred. Trying to push..." -ForegroundColor Yellow
            git push -u origin main
        }
    }
} else {
    Write-Host "You can add the remote later using:" -ForegroundColor Yellow
    Write-Host "  git remote add origin YOUR-REPO-URL" -ForegroundColor White
    Write-Host "  git push -u origin main" -ForegroundColor White
}

Write-Host ""
Read-Host "Press Enter to exit"

