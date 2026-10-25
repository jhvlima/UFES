# Organização do Git — 25/10/2026

## Resultado

Foram criados 29 commits nas disciplinas, separados por assunto. No UFES,
a organização é registrada em 14 commits: documentação e manutenção, bibliografia,
materiais de estágio e uma atualização de referência por disciplina alterada.
Os 43 commits desta organização são locais. Não houve push nem reescrita de histórico.

Os 21 submódulos diretos mantêm seus caminhos e URLs. As URLs locais foram
sincronizadas com `.gitmodules`, e PaP passou a usar os metadados em
`.git/modules/periodo-6/PaP`, preservando o histórico.

## Commits por disciplina

| Disciplina | Quantidade |
| --- | ---: |
| `periodo-4/POO` | 1 |
| `periodo-5/PI1` | 1 |
| `periodo-5/Redes` | 1 |
| `periodo-6/PaP` | 1 |
| `periodo-7/CC` | 1 |
| `periodo-7/BD1` | 2 |
| `periodo-7/IA` | 5 |
| `periodo-8/CD` | 5 |
| `periodo-8/MCD` | 3 |
| `periodo-8/MP` | 2 |
| `periodo-8/CG` | 7 |

| Repositório | Commit | Assunto |
| --- | --- | --- |
| `periodo-4/POO` | `f974818` | chore: ignora arquivo Java mantido localmente |
| `periodo-5/PI1` | `6f0493e` | chore(submodules): atualiza referencia do liftup |
| `periodo-5/Redes` | `1fe0bc0` | chore: deixa ambiente virtual fora do versionamento |
| `periodo-6/PaP` | `e913f16` | chore: preserva Prolog e material de consulta como arquivos locais |
| `periodo-7/CC` | `2f4b862` | chore: remove referencias incompletas de repositorios locais |
| `periodo-7/BD1` | `673ad5d` | feat: adiciona ambiente MySQL e exercicios de transacoes |
| `periodo-7/BD1` | `e663940` | docs: adiciona prova de Banco de Dados |
| `periodo-7/IA` | `3cbe654` | chore: ignora repositorios independentes e arquivos locais |
| `periodo-7/IA` | `b3f07cb` | chore: configura ambiente Python com venv e pip |
| `periodo-7/IA` | `dbfebe8` | docs: adiciona aulas de aprendizado de maquina e anotacoes |
| `periodo-7/IA` | `5aa0fd0` | data: adiciona conjunto de equipamentos |
| `periodo-7/IA` | `f71c5b0` | docs: organiza enunciados e planejamento do projeto final |
| `periodo-8/CD` | `6a9bdcf` | docs: adiciona notebooks das aulas de Ciencia de Dados |
| `periodo-8/CD` | `789b46e` | docs: atualiza resolucao da primeira lista |
| `periodo-8/CD` | `d3f5b4a` | docs: adiciona segunda lista de exercicios |
| `periodo-8/CD` | `8166079` | docs: adiciona especificacao do trabalho final |
| `periodo-8/CD` | `f86f2a9` | feat: registra trabalho pratico de livros e dados de pre-processamento |
| `periodo-8/MCD` | `5a1b031` | docs: organiza trilhas de notebooks e ferramentas de validacao |
| `periodo-8/MCD` | `70d2050` | feat: organiza simulacoes de quique e guia do trabalho |
| `periodo-8/MCD` | `afb9a4c` | feat: registra experimentos de impacto e resultados do piloto |
| `periodo-8/MP` | `41a021b` | docs: adiciona artigo A3 com dados e verificacao de conformidade |
| `periodo-8/MP` | `93b48e4` | docs: adiciona apresentacao A4 e roteiro de exposicao |
| `periodo-8/CG` | `b127637` | chore: ignora executaveis locais dos trabalhos e laboratorios |
| `periodo-8/CG` | `7d5a089` | fix: ajusta guarda de inclusao da classe Alvo no laboratorio 3 |
| `periodo-8/CG` | `e89ac6f` | docs: adiciona enunciado e planejamento do Trabalho2D |
| `periodo-8/CG` | `e823227` | feat: adiciona implementacao e configuracao do Trabalho2D |
| `periodo-8/CG` | `d12fbdd` | feat: adiciona versao de referencia do Trabalho2D com testes |
| `periodo-8/CG` | `eb7eda4` | docs: adiciona exemplos e enunciado do laboratorio 4 |
| `periodo-8/CG` | `8e0e6ed` | docs: adiciona materiais de animacao do laboratorio 5 |

## Preservação e pendências

As seguintes exclusões foram deixadas pendentes por decisão do usuário:

- `periodo-7/CC/implementation_plan.md`
- `periodo-7/IA/atividade3.ipynb`
- `periodo-8/MP/material_professor/Cartilha de Serviços- Tecnologia (1).pdf`

Os repositórios locais ignorados e seus arquivos foram preservados, inclusive
as alterações internas dos laboratórios de CC e os projetos independentes de IA.
Consulte [as convenções](ORGANIZACAO_GIT.md) para a lista de diretórios locais.
As quatro referências incompletas de PaP, CC e IA foram retiradas apenas do índice.

O ambiente `Redes/trab2/server/venv` deixou de ser versionado; os arquivos que
existiam localmente foram mantidos. Não houve limpeza de histórico nem remoção
de livros ou materiais de consulta da máquina. Os caminhos das disciplinas
foram preservados.

## Verificações realizadas

- `git submodule status --recursive`: sem referências sem cadastro.
- 116 notebooks de IA, CD e MCD: formato Jupyter e sintaxe das células Python
  válidos; sem execução integral ou avaliação das respostas acadêmicas.
- MP/A3 e MP/A4: `make verificar` passou. Não equivale a revisão acadêmica ou submissão.
- CG/Trabalho2D: compilação passou.
- CG/Trabalho2D_referencia: alvo de compilação conferido e 13 grupos de testes passaram.
  Não houve validação visual do jogo nesta organização.
- Scripts Bash: sintaxe válida; em repositório temporário, inspeção e inicialização
  limpa passaram, atualização recusou alteração interna, argumento inválido foi
  rejeitado e diagnóstico preservou o estado do Git.

Não foi feita clonagem externa nem confirmação de disponibilidade dos novos
commits no GitHub. Para publicar, envie primeiro os repositórios internos e depois
as referências no UFES. PaP/Prolog, os dois laboratórios locais de CC e IA/IA
permanecem locais, fora da clonagem recursiva.

## Ajuste posterior: Cálculo IV

O usuário definiu que os materiais de `periodo-3/Calc4` devem permanecer
diretamente no UFES. A regra de exclusão foi retirada de `.gitignore`, e os
sete PDFs foram incluídos em um commit próprio no repositório principal.
Essa decisão acrescenta um commit aos 43 registrados acima, totalizando 44
commits locais nesta organização (29 nas disciplinas e 15 no UFES).
As três exclusões pendentes permanecem sem commit. Não houve publicação.
