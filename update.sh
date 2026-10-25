#!/usr/bin/env bash
# Inicializa as versões registradas; nunca executa pull nos submódulos.
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

case "${1:---init}" in
    --status)
        git status --short
        git submodule status --recursive
        ;;
    --init)
        # Inclui arquivos não rastreados; os ignorados permanecem locais.
        if [[ -n "$(git status --porcelain --untracked-files=normal)" ]]; then
            echo "Há alterações locais. Revise e faça os commits antes de inicializar." >&2
            exit 1
        fi
        git submodule sync --recursive
        git submodule update --init --recursive
        ;;
    *)
        echo "Uso: bash update.sh [--status|--init]" >&2
        exit 2
        ;;
esac
