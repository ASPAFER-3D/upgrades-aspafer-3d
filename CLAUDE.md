# CLAUDE.md — ASPAFER-3D Projetos Claude

Guia para assistentes de IA (Claude) trabalharem neste repositório.

## Visão Geral

Repositório central de backup e desenvolvimento de projetos criados com Claude para a **ASPAFER-3D** — empresa/sistema de impressoras 3D.

- **Licença:** GNU GPL v3
- **Idioma padrão:** Português (documentação e commits)
- **Desenvolvimento assistido:** Claude (Anthropic)

## Estrutura do Repositório

```
upgrades-aspafer-3d/
├── CityFX-V1/          # CityFX — Versão 1 (base inicial)
│   ├── README.md
│   └── src/            # Código-fonte (a preencher)
├── CityFX-V2/          # CityFX — Versão 2 (melhorias sobre V1)
│   ├── README.md
│   └── src/            # Código-fonte (a preencher)
├── ServoPoint/         # Sistema de controle de servos
│   ├── README.md
│   └── src/            # Código-fonte (a preencher)
├── Virador-ASPAFER/    # Sistema do mecanismo virador da impressora
│   ├── README.md
│   └── src/            # Código-fonte (a preencher)
├── .gitignore          # Ignora build artifacts e arquivos de IDE
├── LICENSE             # GNU GPL v3
├── README.md           # Visão geral do repositório
└── CLAUDE.md           # Este arquivo
```

## Projetos

### CityFX-V1
- Versão inicial do sistema CityFX
- Foco nas funcionalidades principais (base)
- Código-fonte em `CityFX-V1/src/`

### CityFX-V2
- Evolução do CityFX-V1
- Traz melhorias de arquitetura, performance e novas funcionalidades
- Código-fonte em `CityFX-V2/src/`

### ServoPoint
- Sistema de controle e gerenciamento de servos
- Integrado aos equipamentos ASPAFER-3D
- Código-fonte em `ServoPoint/src/`

### Virador-ASPAFER
- Sistema de controle do mecanismo virador da impressora ASPAFER-3D
- Responsável pela movimentação e posicionamento precisos
- Código-fonte em `Virador-ASPAFER/src/`

## Tecnologias / Stack

Com base no `.gitignore`, os projetos podem utilizar:
- **ActionScript / Adobe Flex / Flash Builder** (`.swf`, `.air`, `.apk`, `.ipa`)
- Compilação com saída em `bin-debug/` e `bin-release/`
- IDE: Eclipse ou Flash Builder (arquivos `.project`, `.actionScriptProperties`, `.flexProperties` são versionados)

> Se o stack mudar ou for confirmado, atualize esta seção.

## Convenções

- **Commits em português**, descritivos e no imperativo (ex: `Adicionar controle de servo`, `Corrigir posicionamento do virador`)
- **Cada projeto tem seu próprio diretório** — não misturar código entre projetos
- **Código-fonte fica em `src/`** dentro de cada diretório de projeto
- **Não versionar** build artifacts (`bin-debug/`, `bin-release/`, `obj/`, `bin/`, `.settings/`)

## Fluxo de Desenvolvimento

1. Identifique o projeto correto pelo diretório (`CityFX-V1/`, `CityFX-V2/`, `ServoPoint/`, `Virador-ASPAFER/`)
2. Desenvolva o código em `src/` dentro do diretório do projeto
3. Faça commits descritivos em português
4. Mantenha o README de cada projeto atualizado com instruções de build/run

## Git — Branches

- `master` — branch principal local
- `main` — branch principal remoto (origin)
- `claude/...` — branches de trabalho das sessões Claude

## Propósito deste Repositório

- Backup seguro no GitHub
- Histórico de versões e evolução do código
- Contexto para futuras sessões com Claude
- Organização clara por projeto e versão

---

## Diretrizes de Comportamento do Claude (Karpathy Guidelines)

Baseado nas observações de [Andrej Karpathy](https://x.com/karpathy/status/2015883857489522876) sobre erros comuns de LLMs em código.

> **Atenção:** Estas diretrizes favorecem cautela sobre velocidade. Para tarefas triviais, use o bom senso.

### 1. Pensar Antes de Codificar

**Não assuma. Não esconda confusão. Mostre os tradeoffs.**

Antes de implementar:
- Declare suas suposições explicitamente. Se incerto, pergunte.
- Se houver múltiplas interpretações, apresente-as — não escolha em silêncio.
- Se uma abordagem mais simples existir, diga. Questione quando necessário.
- Se algo estiver confuso, pare. Nomeie o que está confuso. Pergunte.

### 2. Simplicidade Primeiro

**Mínimo de código que resolve o problema. Nada especulativo.**

- Sem funcionalidades além do que foi pedido.
- Sem abstrações para código de uso único.
- Sem "flexibilidade" ou "configurabilidade" que não foi solicitada.
- Sem tratamento de erros para cenários impossíveis.
- Se você escreve 200 linhas e poderiam ser 50, reescreva.

**Teste:** "Um engenheiro sênior diria que isso está complicado demais?" Se sim, simplifique.

### 3. Mudanças Cirúrgicas

**Toque apenas o que for necessário. Limpe apenas a sua própria bagunça.**

Ao editar código existente:
- Não "melhore" código, comentários ou formatação adjacentes.
- Não refatore coisas que não estão quebradas.
- Mantenha o estilo existente, mesmo que faria diferente.
- Se notar código morto não relacionado, mencione — não delete.

Quando suas mudanças criam órfãos:
- Remova imports/variáveis/funções que AS SUAS mudanças tornaram não utilizados.
- Não remova código morto pré-existente a menos que solicitado.

**Teste:** Cada linha alterada deve ser rastreável diretamente ao pedido do usuário.

### 4. Execução Orientada a Metas

**Defina critérios de sucesso. Execute até verificar.**

Transforme tarefas em metas verificáveis:
- "Adicionar validação" → "Escrever testes para entradas inválidas, depois fazê-los passar"
- "Corrigir o bug" → "Escrever um teste que o reproduz, depois fazê-lo passar"
- "Refatorar X" → "Garantir que os testes passem antes e depois"

Para tarefas de múltiplos passos, declare um plano breve:
```
1. [Passo] → verificar: [checagem]
2. [Passo] → verificar: [checagem]
3. [Passo] → verificar: [checagem]
```

---

*Última atualização: Setembro 2026*
