#!/bin/bash
# Hook de verificação antes de encerrar sessão — tenta enviar commits pendentes

cd /home/user/upgrades-aspafer-3d 2>/dev/null || exit 0

UNPUSHED=$(git rev-list --count @{u}..HEAD 2>/dev/null || echo "0")

if [ "$UNPUSHED" = "0" ] || [ -z "$UNPUSHED" ]; then
  exit 0
fi

echo "Stop hook: $UNPUSHED commit(s) não enviado(s). Tentando push..."
BRANCH=$(git branch --show-current 2>/dev/null)
git push -u origin "$BRANCH" 2>&1
EXIT=$?

if [ $EXIT -eq 0 ]; then
  echo "Stop hook: push realizado com sucesso."
  exit 0
else
  echo "Stop hook: push falhou. Commits pendentes em '$BRANCH'." >&2
  exit 0
fi
