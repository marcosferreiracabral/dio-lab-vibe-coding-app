# 📋 Guia de Deploy - DIO Lab Vibe Coding App

## ✅ Checklist de Passos

### Passo 1: Preparar o Fork no GitHub

**O que fazer:**
1. Acesse: https://github.com/digitalinnovationone/dio-lab-vibe-coding-app-financas
2. Clique no botão **"Fork"** (canto superior direito)
3. Confirme que quer fazer o fork para sua conta
4. Aguarde a conclusão

**Resultado esperado:**
- Você terá um novo repositório em: `https://github.com/marcosferreiracabral/dio-lab-vibe-coding-app-financas`

---

### Passo 2: Instalar Git (se ainda não tem)

**Se Git não está instalado:**

**Opção A - Via winget (Recomendado):**
```powershell
winget install Git.Git -e
```

**Opção B - Download manual:**
- Acesse: https://git-scm.com/
- Download para Windows
- Execute o instalador
- Reinicie o PowerShell após instalar

**Verificar instalação:**
```powershell
git --version
```

---

### Passo 3: Configurar Git Globalmente

```powershell
git config --global user.name "Marcos Ferreira Cabral"
git config --global user.email "seu.email@gmail.com"  # Use seu email real
```

**Verificar configuração:**
```powershell
git config --global user.name
git config --global user.email
```

---

### Passo 4: Executar o Deploy Automatizado

**Use o script criado:**

```powershell
# Abra PowerShell e execute:
cd C:\dio-lab-vibe-coding-app
powershell -ExecutionPolicy Bypass -File .\deploy.ps1
```

**O script irá:**
- ✅ Verificar Git
- ✅ Inicializar o repositório
- ✅ Configurar remoto (origin)
- ✅ Adicionar todos os arquivos
- ✅ Fazer commit
- ✅ Fazer push para GitHub

---

### Passo 5 (Alternativa): Deploy Manual

Se o script não funcionar, faça manualmente:

```powershell
# Navegar para o projeto
cd C:\dio-lab-vibe-coding-app

# Inicializar git (se não existir .git)
git init

# Adicionar remoto
git remote add origin https://github.com/marcosferreiracabral/dio-lab-vibe-coding-app-financas.git

# Configurar branch padrão
git branch -M main

# Adicionar arquivos
git add .

# Commit
git commit -m "docs: adicionar prompt PRD, conceito e reflexões do projeto"

# Push
git push -u origin main
```

---

### Passo 6: Adicionar Screenshots/Vídeos (Opcional mas Recomendado)

1. Crie uma pasta `assets/screenshots` em `C:\dio-lab-vibe-coding-app\assets\`
2. Adicione suas capturas de tela ou vídeos lá
3. Edite o README.md e adicione links para as imagens:

```markdown
### Screenshots

![Onboarding](./assets/screenshots/onboarding.png)
![Chat Principal](./assets/screenshots/chat.png)
![Dashboard](./assets/screenshots/dashboard.png)
```

4. Faça novo commit e push:
```powershell
git add .
git commit -m "docs: adicionar screenshots das interações"
git push
```

---

### Passo 7: Copiar o Link do Repositório

Seu repositório estará em:
```
https://github.com/marcosferreiracabral/dio-lab-vibe-coding-app-financas
```

---

### Passo 8: Entregar na DIO

1. Acesse a plataforma DIO
2. Vá até o desafio "DIO Lab Vibe Coding - App de Finanças"
3. Clique em **"ENTREGAR PROJETO"**
4. Cole o link do seu repositório:
   ```
   https://github.com/marcosferreiracabral/dio-lab-vibe-coding-app-financas
   ```
5. Clique em **"Enviar"**

---

## 🆘 Troubleshooting

### Erro: "Git não é reconhecido"
- Git não está instalado ou não está no PATH
- **Solução:** Instale Git via winget e reinicie o PowerShell

### Erro: "fatal: remote origin already exists"
- Remoto já foi adicionado
- **Solução:** Use `git remote set-url origin https://...` para atualizar

### Erro: "Permission denied (publickey)"
- Problema de autenticação SSH
- **Solução:** Configure token pessoal do GitHub:
  1. GitHub Settings → Developer settings → Personal access tokens
  2. Crie um novo token com permissão `repo`
  3. Use na URL: `https://seu_token@github.com/usuario/repo.git`

### Erro: "branch 'main' set up to track 'origin/main'"
- Tudo funcionou! É só informação do git

---

## ✨ Pronto!

Após completar todos os passos, seu projeto estará:
- ✅ No GitHub (repositório forkeado)
- ✅ Com README completo e profissional
- ✅ Pronto para entregar na DIO

**Qualquer dúvida, veja o passo a passo novamente!**

