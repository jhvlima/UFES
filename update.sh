#!/bin/bash
# Este script atualiza todos os submódulos Git para a sua versão mais recente,
# incluindo submódulos aninhados (recursivos).

echo "▶️  Iniciando a sincronização e inicialização de todos os submódulos..."
# Garante que qualquer novo submódulo seja registado e as URLs estejam corretas.
git submodule sync --recursive
git submodule update --init --recursive

echo -e "\n🔄  Atualizando cada submódulo para a versão mais recente (branch 'main' ou 'master')..."
# Itera sobre cada submódulo (incluindo os aninhados) e executa 'git pull'.
# Tenta fazer o pull da branch 'main' e, se falhar, tenta da 'master'.
# Isto garante que funciona mesmo que os seus repositórios usem nomes de branch diferentes.
git submodule foreach --recursive 'git pull origin main || git pull origin master'

echo -e "\n✅  Processo de atualização local concluído!"
echo "------------------------------------------------------------------"
echo "ℹ️  PRÓXIMOS PASSOS:"
echo "Os seus submódulos foram atualizados localmente."
echo "O seu repositório principal (UFES) registou estas mudanças (novos commits nos submódulos)."
echo ""
echo "Para guardar estas atualizações, execute os seguintes comandos:"
echo "1. git status              (para ver as alterações)"
echo "2. git add .               (para adicionar as novas referências dos submódulos)"
echo "3. git commit -m \"Atualiza os submódulos para as versões mais recentes\""
echo "4. git push"
