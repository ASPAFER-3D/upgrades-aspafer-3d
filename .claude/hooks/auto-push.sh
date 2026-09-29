#!/bin/bash
# Hook de auto-push — chamado após git commit, envia automaticamente para o remoto

cd /home/user/upgrades-aspafer-3d 2>/dev/null || exit 0

BRANCH=$(git branch --show-current 2>/dev/null)
if [ -z "$BRANCH" ]; then
  exit 0
fi

echo "Auto-push: enviando branch '$BRANCH'..."
git push -u origin "$BRANCH" 2>&1
EXIT=$?

if [ $EXIT -eq 0 ]; then
  echo "Auto-push: sucesso."
else
  echo "Auto-push: falhou (código $EXIT). Tente 'git push' manualmente."
fi

exit 0
