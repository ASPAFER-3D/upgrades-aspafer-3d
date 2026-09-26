#!/bin/bash
# Hook de início de sessão — mostra estado do repositório ASPAFER-3D

cd /home/user/upgrades-aspafer-3d 2>/dev/null || exit 0

BRANCH=$(git branch --show-current 2>/dev/null || echo "desconhecido")
LAST=$(git log --oneline -1 2>/dev/null || echo "sem commits")
UNPUSHED=$(git rev-list --count @{u}..HEAD 2>/dev/null || echo "?")

echo ""
echo "=== ASPAFER-3D — Início de Sessão ==="
echo "Branch : $BRANCH"
echo "Último commit : $LAST"
echo "Commits não enviados : $UNPUSHED"
git status --short 2>/dev/null | head -10
echo "======================================"
