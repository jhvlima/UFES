# Repositório Acadêmico - Ciência da Computação (UFES)

Este repositório centraliza todos os projetos, trabalhos e materiais relevantes desenvolvidos durante a minha graduação em **Ciência da Computação** na **Universidade Federal do Espírito Santo (UFES)**.

O objetivo é manter um registro organizado da minha jornada acadêmica, utilizando **submódulos Git** para referenciar os repositórios que criei para cada disciplina.

---

## 📚 Índice de Disciplinas por Período

### 1º Período

- [PROG1 - Programação de computadores I](https://github.com/jhvlima/prog1)
- ATC - Aspectos Teoricos da Computação
- ICC - Introdução à Ciência da Computação
- CALC1 - Cálculo I

### 2º Período

- [PROG2 - Programação de computadores II](https://github.com/jhvlima/prog2)
- LOG1 - Lógica para Computação I
- [ELD - Elementos de Lógica Digital](https://github.com/jhvlima/ELD)
- CALC2 - Cálculo II

### 3º Período

- [ED - Estrutura de Dados](https://github.com/jhvlima/ED)
- [AOC - Arquitetura e Organização de Computadores](https://github.com/jhvlima/ArqComp)
- ALGLIN - Álgebra Linear
- CALC4 - Cálculo IV
- PROB - Probabilidade e Estatística

### 4º Período

- [TBO - Técnicas de Busca e Ordenação](https://github.com/jhvlima/TBO)
- [POO - Programação Orientada a Objetos](https://github.com/jhvlima/POO)
- [Grafos - Teoria de Grafos](https://github.com/jhvlima/Grafos)
- LFA - Linguagens Formais e Autômatos
- [SO - Sistemas Operacionais](https://github.com/jhvlima/SO)

### 5º Período

- [PI1 - Projeto Integrado I](https://github.com/jhvlima/PI)
- [ES1 - Engenharia de Software](https://github.com/jhvlima/EngSoft)
- LOG2 - Lógica para Computação II
- [Redes - Redes de Computadores](https://github.com/jhvlima/Redes)
- [AlgNum - Algoritmos Numéricos](https://github.com/jhvlima/AlgNum)

### 6º Período

- [PaP - Paradigmas de Programação](https://github.com/jhvlima/PaP)
- COMPSOC - Computação e Sociedade
- ES2 - Engenharia de Software II
- TOC - Teoria da Computação

### 7º Período

- [CC - Compiladores](https://github.com/jhvlima/CC)
- [BD1 - Banco de Dados I](https://github.com/jhvlima/BD1)
- PAA - Projeto e Análise de Algoritmos
- [IA - Inteligência Artificial](https://github.com/jhvlima/IA)

### 8º Período

- [CD - Ciência de Dados](periodo-8/CD/)
- [CG - Computação Gráfica](periodo-8/CG/)
- [MCD - Matemática para Ciência de Dados](periodo-8/MCD/)
- [MP - Métodos de Pesquisa](periodo-8/MP/)
- [EstSup - Estágio Supervisionado (materiais locais)](periodo-8/EstSup/)

### 9º Período

- TCC1 - Trabalho de Conclusão de Curso I
- ESTSUP - Estágio Supervisionado

### 10º Período

- TCC2 - Trabalho de Conclusão de Curso II

---

## 🔄 Observação

Este índice será atualizado à medida que novas disciplinas forem concluídas e adicionadas como submódulos.
Algumas disciplinas podem não ter repositórios dedicados, dependendo do tipo de trabalho realizado.

---

```bash
git clone --recurse-submodules https://github.com/jhvlima/UFES.git
git submodule update --init --recursive
```

## Bibliografia e materiais

A [bibliografia da graduação](BIBLIOGRAFIA.md) reúne referências do
[Projeto Pedagógico de 2022](ppc-cc-2022.pdf).
Os materiais de estágio estão em [periodo-8/EstSup](periodo-8/EstSup/).

## Trabalhar com os submódulos

O cadastro efetivo está em [`.gitmodules`](.gitmodules). Algumas disciplinas
são privadas e exigem acesso aos respectivos repositórios.

```bash
# Inspecionar os commits registrados, inclusive submódulos aninhados
git submodule status --recursive
bash update.sh --status

# Baixar os commits registrados pelo UFES
bash update.sh --init
```

Faça os commits dentro da disciplina, por assunto e com caminhos explícitos.
Depois registre o novo commit da disciplina no repositório UFES:

```bash
git -C periodo-8/CD add -- caminho/do/arquivo
git -C periodo-8/CD commit -m "docs: atualiza material da disciplina"
git add -- periodo-8/CD
git commit -m "chore(submodules): atualiza CD"
```

Ao publicar, envie primeiro os commits das disciplinas e só depois os do UFES,
para que suas referências possam ser baixadas em outra máquina.
O script de atualização usa as versões registradas; para avançar uma disciplina,
selecione e revise a atualização dentro do repositório dela.

Veja as [convenções de organização](docs/ORGANIZACAO_GIT.md) para materiais
locais, ambientes e repositórios aninhados.
