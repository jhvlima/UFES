# Repositório Academico - Ciência da Computação (UFES)

Este repositório centraliza todos os projetos, trabalhos e materiais relevantes desenvolvidos durante a minha graduação em **Ciência da Computação** na **Universidade Federal do Espírito Santo (UFES)**.

O objetivo é manter um registo organizado da minha jornada academica, utilizando **submódulos Git** para referenciar os repositórios que criei para cada disciplina.

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

- CC - Compiladores
- BD1 - Banco de Dados I
- PAA - Projeto e Análise de Algoritmos
- IA - Inteligência Artificial

### 8º Período

- MP - Métodos de Pesquisa

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

# Script para criar a estrutura de diretórios e adicionar submódulos

```bash
# Comando para criar a estrutura completa de diretórios para Ciência da Computação (UFES)
# usando as abreviações da matriz curricular em letras maiúsculas.

# Define a pasta raiz
ROOT_DIR="."

# Cria a pasta raiz
mkdir -p "$ROOT_DIR"

# Cria a estrutura de períodos e disciplinas
mkdir -p "$ROOT_DIR"/periodo-1/{01-PROG1,02-ATC,03-ICC,04-CALC1} && \
mkdir -p "$ROOT_DIR"/periodo-2/{01-PROG2,02-LOG1,03-ELD,04-CALC2} && \
mkdir -p "$ROOT_DIR"/periodo-3/{01-ED,02-AOC,03-ALGLIN,04-CALC4,05-PROB} && \
mkdir -p "$ROOT_DIR"/periodo-4/{01-TBO,02-POO,03-GRAFOS,04-LFA,05-SO} && \
mkdir -p "$ROOT_DIR"/periodo-5/{01-PI1,02-ES1,03-LOG2,04-REDES,05-ALGNUM} && \
mkdir -p "$ROOT_DIR"/periodo-6/{01-PAP,02-COMPSOC,03-ES2,04-TOC} && \
mkdir -p "$ROOT_DIR"/periodo-7/{01-CC,02-BD1,03-PAA,04-IA,05-OPT1} && \
mkdir -p "$ROOT_DIR"/periodo-8/{01-MP,02-OPT2,03-OPT3,04-OPT4} && \
mkdir -p "$ROOT_DIR"/periodo-9/{01-TCC1,02-ESTSUP,03-OPT5,04-OPT6,05-OPT7} && \
mkdir -p "$ROOT_DIR"/periodo-10/{01-TCC2,02-OPT8,03-OPT9} && \

echo "Estrutura de diretórios de Ciência da Computação criada com sucesso em '$ROOT_DIR'!"

# Este script adiciona todos os repositórios das disciplinas da UFES como submódulos.

# --- Período 1 ---
git submodule add https://github.com/jhvlima/prog1.git periodo-1/Prog1
git submodule add https://github.com/jhvlima/ATC.git periodo-1/ATC
git submodule add https://github.com/jhvlima/ICC.git periodo-1/ICC
git submodule add https://github.com/jhvlima/CALC1.git periodo-1/CALC1

# --- Período 2 ---
git submodule add https://github.com/jhvlima/prog2.git periodo-2/Prog2
git submodule add https://github.com/jhvlima/LOG1.git periodo-2/LOG1
git submodule add https://github.com/jhvlima/ELD.git periodo-2/ELD
git submodule add https://github.com/jhvlima/CALC2.git periodo-2/CALC2

# --- Período 3 ---
git submodule add https://github.com/jhvlima/ED.git periodo-3/ED
git submodule add https://github.com/jhvlima/ArqComp.git periodo-3/AOC
git submodule add https://github.com/jhvlima/ALGLIN.git periodo-3/ALGLIN
git submodule add https://github.com/jhvlima/CALC4.git periodo-3/CALC4
git submodule add https://github.com/jhvlima/PROB.git periodo-3/PROB

# --- Período 4 ---
git submodule add https://github.com/jhvlima/TBO.git periodo-4/TBO
git submodule add https://github.com/jhvlima/POO.git periodo-4/POO
git submodule add https://github.com/jhvlima/Grafos.git periodo-4/Grafos
git submodule add https://github.com/jhvlima/LFA.git periodo-4/LFA
git submodule add https://github.com/jhvlima/SO.git periodo-4/SO

# --- Período 5 ---
git submodule add https://github.com/jhvlima/PI.git periodo-5/PI1
git submodule add https://github.com/jhvlima/EngSoft.git periodo-5/ES1
git submodule add https://github.com/jhvlima/LOG2.git periodo-5/LOG2
git submodule add https://github.com/jhvlima/Redes.git periodo-5/REDES
git submodule add https://github.com/jhvlima/AlgNum.git periodo-5/ALGNUM

# --- Período 6 ---
git submodule add https://github.com/jhvlima/PaP.git periodo-6/PaP
git submodule add https://github.com/jhvlima/COMPSOC.git periodo-6/COMPSOC
git submodule add https://github.com/jhvlima/ES2.git periodo-6/ES2
git submodule add https://github.com/jhvlima/TOC.git periodo-6/TOC

# --- Período 7 ---
git submodule add https://github.com/jhvlima/CC.git periodo-7/CC
git submodule add https://github.com/jhvlima/BD1.git periodo-7/BD1
git submodule add https://github.com/jhvlima/PAA.git periodo-7/PAA
git submodule add https://github.com/jhvlima/IA.git periodo-7/IA
git submodule add https://github.com/jhvlima/OPT1.git periodo-7/OPT1

# --- Período 8 ---
git submodule add https://github.com/jhvlima/MP.git periodo-8/MP
git submodule add https://github.com/jhvlima/OPT2.git periodo-8/OPT2
git submodule add https://github.com/jhvlima/OPT3.git periodo-8/OPT3
git submodule add https://github.com/jhvlima/OPT4.git periodo-8/OPT4

# --- Período 9 ---
git submodule add https://github.com/jhvlima/TCC1.git periodo-9/TCC1
git submodule add https://github.com/jhvlima/ESTSUP.git periodo-9/ESTSUP
git submodule add https://github.com/jhvlima/OPT5.git periodo-9/OPT5
git submodule add https://github.com/jhvlima/OPT6.git periodo-9/OPT6
git submodule add https://github.com/jhvlima/OPT7.git periodo-9/OPT7

# --- Período 10 ---
git submodule add https://github.com/jhvlima/TCC2.git periodo-10/TCC2
git submodule add https://github.com/jhvlima/OPT8.git periodo-10/OPT8
git submodule add https://github.com/jhvlima/OPT9.git periodo-10/OPT9

echo "Todos os submódulos foram adicionados!"
echo "Agora, execute 'git status' para ver as alterações e depois 'git commit'."
```
