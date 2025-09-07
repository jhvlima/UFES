#!/bin/bash
# Este script remove de forma segura uma referência de submódulo corrompida ou mal configurada.
# USO: ./remove_submodule.sh <caminho-completo-do-submodulo>

# Verifica se o caminho do submódulo foi fornecido
if [ -z "$1" ]; then
    echo "❌ ERRO: Por favor, forneça o caminho completo para o submódulo que deseja remover."
    echo "Exemplo: ./remove_submodule.sh periodo-4/TBO/trab1tbo"
    exit 1
fi

SUBMODULE_PATH=$1

echo "🧹 Iniciando a limpeza para o submódulo: $SUBMODULE_PATH"

# Passo 1: Desinicializa o submódulo, removendo a sua entrada do .git/config
echo "--> Desinicializando o submódulo..."
git submodule deinit -f "$SUBMODULE_PATH"

# Passo 2: Remove o submódulo do controlo de versões do Git e do .gitmodules
echo "--> Removendo o submódulo do Git index e do .gitmodules..."
git rm -f "$SUBMODULE_PATH"

# Passo 3: Remove os metadados do submódulo do diretório .git
echo "--> Removendo metadados de .git/modules..."
rm -rf ".git/modules/$SUBMODULE_PATH"

# Passo 4: Remove o diretório de trabalho do submódulo (se ainda existir)
if [ -d "$SUBMODULE_PATH" ]; then
    echo "--> Removendo o diretório de trabalho do submódulo..."
    rm -rf "$SUBMODULE_PATH"
fi

echo "✅ Limpeza concluída!"
echo "---------------------------------------------------------"
echo "ℹ️  PRÓXIMOS PASSOS:"
echo "1. Faça commit desta remoção:"
echo "   git commit -m \"Remove completamente a referência do submódulo $SUBMODULE_PATH\""
echo ""
echo "2. Agora, pode tentar adicionar o submódulo novamente:"
echo "   git submodule add <url-do-repositorio> \"$SUBMODULE_PATH\""