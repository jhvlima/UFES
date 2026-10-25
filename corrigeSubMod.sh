#!/usr/bin/env bash
# Diagnóstico sem desinicializar, excluir arquivos ou remover históricos.
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

if [[ $# -ne 1 || ! -d "$1" ]]; then
    echo "Uso: bash corrigeSubMod.sh <diretorio-do-submodulo>" >&2
    exit 2
fi

module_path=$1
printf 'Referência registrada no UFES:\n'
git ls-files --stage -- "$module_path"
printf '\nCadastro em .gitmodules:\n'
git config -f .gitmodules --get-regexp 'submodule\..*\.(path|url)'
printf '\nEstado do repositório local:\n'
git -C "$module_path" status --short --branch
printf '\nRemotos locais:\n'
git -C "$module_path" remote -v
printf '\nNenhum arquivo ou metadado foi alterado. Consulte docs/ORGANIZACAO_GIT.md.\n'
