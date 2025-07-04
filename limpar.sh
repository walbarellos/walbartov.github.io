#!/bin/bash

echo "🧹 Limpando cache do Nikola e arquivos locais de build..."

# Remove arquivos de build locais
rm -rf output cache .doit.db

# Remove do Git (caso tenham sido adicionados acidentalmente)
git rm -rf --cached output cache .doit.db 2>/dev/null

# Adiciona mudanças
git add .

echo "✅ Pronto! Agora é só commitar e dar push:"
echo "   git commit -m \"limpeza de arquivos locais\""
echo "   git push"

