#!/usr/bin/env pwsh
# Script de Deploy - DIO Lab Vibe Coding App

Write-Host "🚀 Iniciando processo de deploy..." -ForegroundColor Cyan

$projectPath = "C:\dio-lab-vibe-coding-app"
$repoUrl = "https://github.com/marcosferreiracabral/dio-lab-vibe-coding-app-financas.git"
$userName = "Marcos Ferreira Cabral"
$userEmail = "seu.email@example.com"

# Step 1: Verificar Git
Write-Host "`n1️⃣ Verificando Git..." -ForegroundColor Yellow
git --version
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Git não instalado. Instale em: https://git-scm.com/" -ForegroundColor Red
    exit 1
}

# Step 2: Navegar para o projeto
Write-Host "`n2️⃣ Navegando para o projeto..." -ForegroundColor Yellow
Set-Location $projectPath
Write-Host "✅ Localização: $(Get-Location)" -ForegroundColor Green

# Step 3: Configurar Git (se necessário)
Write-Host "`n3️⃣ Configurando Git..." -ForegroundColor Yellow
git config user.name $userName
git config user.email $userEmail
Write-Host "✅ Git configurado" -ForegroundColor Green

# Step 4: Inicializar repositório (se necessário)
if (-not (Test-Path .git)) {
    Write-Host "`n4️⃣ Inicializando repositório..." -ForegroundColor Yellow
    git init
    git remote add origin $repoUrl
    Write-Host "✅ Repositório inicializado" -ForegroundColor Green
} else {
    Write-Host "`n4️⃣ Repositório já existe" -ForegroundColor Green
}

# Step 5: Adicionar arquivos
Write-Host "`n5️⃣ Adicionando arquivos..." -ForegroundColor Yellow
git add .
Write-Host "✅ Arquivos adicionados" -ForegroundColor Green

# Step 6: Verificar status
Write-Host "`n6️⃣ Status do repositório:" -ForegroundColor Yellow
git status

# Step 7: Commit
Write-Host "`n7️⃣ Fazendo commit..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "dd/MM/yyyy HH:mm"
git commit -m "docs: adicionar prompt PRD, conceito e reflexões do projeto [$timestamp]"
Write-Host "✅ Commit realizado" -ForegroundColor Green

# Step 8: Push
Write-Host "`n8️⃣ Fazendo push para GitHub..." -ForegroundColor Yellow
git push -u origin main
Write-Host "✅ Push realizado" -ForegroundColor Green

Write-Host "`n✅ Deploy concluído com sucesso!" -ForegroundColor Green
Write-Host "`n📌 Link do repositório:" -ForegroundColor Cyan
Write-Host "https://github.com/marcosferreiracabral/dio-lab-vibe-coding-app-financas" -ForegroundColor Cyan
Write-Host "`n🎯 Próximo passo: Entregar na plataforma DIO" -ForegroundColor Cyan
