# Organização Git do UFES

O UFES guarda o índice por período, a bibliografia e os materiais sem repositório
próprio. Disciplinas com bastante conteúdo podem ter repositório próprio; as
menores ficam diretamente no UFES. A decisão considera a organização da
disciplina, e não apenas o tamanho dos arquivos. Cálculo IV foi mantido
diretamente em `periodo-3/Calc4` por decisão do usuário. Cada disciplina
cadastrada em `.gitmodules` mantém seus próprios commits.
Os diretórios atuais foram preservados; o período da pasta reflete a organização
local e não necessariamente a posição da disciplina na matriz curricular.

## Separação de commits

- Materiais de aulas, listas, trabalhos e entregas ficam em commits separados.
- Ajustes de `.gitignore` e de referências Git ficam separados do conteúdo acadêmico.
- O UFES recebe um commit de atualização por disciplina, depois dos commits internos.
- Use `git add -- caminho` com arquivos explícitos e confira `git diff --cached`.
- Publicar exige enviar primeiro cada repositório interno e depois o UFES.

## Arquivos locais

Ambientes Python, caches, executáveis e estado do Obsidian não são versionados.
O arquivo `POO/java.zip` e o livro adicional em PaP permanecem locais e
ignorados. Os PDFs de Cálculo IV são versionados diretamente no UFES.
Materiais já presentes no histórico
não foram removidos retroativamente.

Os seguintes repositórios independentes permanecem locais, com seu `.git` e
conteúdo preservados:

- `periodo-6/PaP/Prolog`
- `periodo-7/CC/lab3/ezlang-analise-semantica-alternativa-tabela-strings-apenas`
- `periodo-7/CC/lab4/ezlang-analise-semantica-alternativa2`
- `periodo-7/IA/IA`
- `periodo-7/IA/atividades-2026-1-joao-henrique`
- `periodo-7/IA/projetoFinal/2026-1-projeto-grupo-14` e cópias `-1` e `-2`
- `periodo-8/MCD/trab/competitive_robot_table_tennis`

A referência Prolog de PaP, as duas referências de CC e a referência `IA/IA`
estavam no índice sem cadastro
em `.gitmodules`. Foram retiradas apenas do índice e ignoradas: um clone não
reproduz esses diretórios. Alterações dentro deles devem ser organizadas no
respectivo repositório local, separadamente.

## Inspeção e atualização

`bash update.sh --status` inspeciona a árvore sem alterar arquivos.
`bash update.sh --init` sincroniza as URLs e baixa os commits registrados,
recusando alterações locais antes de atualizar. Não avança branches automaticamente.
`bash corrigeSubMod.sh caminho` apenas diagnostica uma referência; não remove dados.
