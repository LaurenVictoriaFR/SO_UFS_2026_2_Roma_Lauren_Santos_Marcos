# SO_UFS_2026_2_Roma_Lauren_Carvalho_Gabriel
Atividade 1 (AV1) — Sistemas Operacionais (UFS, 2026.2)
**Processos, Threads, Escalonamento e Inferência Local com Ollama**

## Equipe 03

| # | Integrantes |
|---|---|
| 01 | Lauren Victoria Ferreira Roma |
| 02 | Gabriel Ramos de Carvalho |
| 03 | Marcos Vinícios Assunção Nery Santos |
| 04 | Daniel de Andrade Lima |
| 05 | Wanessa Silva Santos |
| 06 | Carlos Henrico Fontes Cabral |
| 07 | Roseane Resende Couto |

## Descrição do projeto
Trabalho da disciplina de Sistemas Operacionais (UFS, 2026.2) — (AV1). O projeto consiste em instalar e executar localmente uma aplicação de IA generativa baseada no Ollama, analisando como processos, threads, escalonamento, uso de CPU/memória e chamadas de sistema se comportam durante a inferência de um modelo de linguagem em ambiente Linux. 

## Trilha de aplicação escolhida

- **Trilha:** Trilha A
- **Camada de aplicação:** open-webui
- **Repositório da camada de aplicação:** [https://github.com/open-webui/open-webui](https://github.com/open-webui/open-webui)

## Modelo selecionado (Hugging Face)

- **Nome completo do modelo:** Llama-3.2-3B-Instruct
- **URL do model card:** [https://huggingface.co/unsloth/Llama-3.2-3B-Instruct-GGUF](https://huggingface.co/unsloth/Llama-3.2-3B-Instruct-GGUF)
- **Parâmetros:** 3.21B
- **Formato / quantização:** Q4_K_M
- **Licença:** [Llama 3.2 Community License Agreement](https://huggingface.co/meta-llama/Llama-3.2-1B/blob/main/LICENSE.txt)

## Ambiente experimental

- **Sistema operacional / kernel:** [preencher]
- **CPU / núcleos:** [preencher]
- **RAM:** [preencher]
- **GPU / VRAM (se houver):** [preencher]
- **Ambiente de execução:** nativo / VM / WSL / contêiner — [preencher]
- **Versão do Ollama:** [preencher]

## Instalação

```bash
# instalar o Ollama
[preencher comandos]

# instalar a camada de aplicação escolhida
[preencher comandos]
```

## Execução

```bash
[preencher comandos para rodar o sistema]
```

## Reprodução dos experimentos

Descreva aqui como rodar os scripts de medição e reproduzir as três configurações comparativas (padrão, concorrência/carga modificada, ajuste de execução local).

```bash
[preencher scripts/comandos]
```

## Estrutura do repositório

```
/relatorio-tecnico.pdf          # item 1 — relatório técnico completo ( a ser inserido)
                                # item 2 — URL/commit/tag/release da camada de aplicação: ver seção "Trilha de aplicação escolhida" acima neste README
/ficha-tecnica-modelo.md        # item 3 — ficha técnica do modelo Hugging Face
/registro-classroom.md          # item 4 — cópia do registro feito no Classroom
/README.md                      # item 5 — este arquivo
/configs/                       # item 6 — docker-compose, Dockerfile, arquivos de config, se houver
/scripts/                       # item 7 — scripts de execução e medição
/resultados/                    # item 8 — logs, tabelas, dados e gráficos
/evidencias/                    # item 9 — evidências de processos, threads, chamadas de sistema, memória, armazenamento
/declaracao-uso-ia.md           # item 10 — Declaração de Uso de IA Generativa
/apresentacao.pdf               # item 11 — slides da apresentação ( a ser inserido)
/VIDEO.md                       # URL do vídeo da atividade (seção 13.1 do enunciado)
```
[preencher]

## Vídeo da atividade

- **URL:** [preencher]
- **Data de gravação:** [preencher]

## Declaração de Uso de IA Generativa

Ver arquivo `declaracao-uso-ia.md`.

## Relatório técnico

O relatório técnico completo em PDF está disponível em: [preencher caminho no repositório ou link]
