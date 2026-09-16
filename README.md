# SO_UFS_2026_2_Roma_Lauren_Carvalho_Gabriel
Atividade 1 (AV1) — Sistemas Operacionais (UFS, 2026.2)
**Processos, Threads, Escalonamento e Inferência Local com Ollama**

## Equipe 03

| # | Integrantes |
|---|---|
| 01 | Lauren Victoria Ferreira Roma |
| 02 | Marcos Vinícios Assunção Nery Santos |
| 03 | Daniel de Andrade Lima |
| 04 | Wanessa Silva Santos |
| 05 | Carlos Henrico Fontes Cabral |
| 06 | Roseane Resende Couto |

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

- **Sistema operacional / kernel:** Ubuntu 26.04.1 LTS Kernel 6.18.33.2-microsoft-standard-WSL2
- **CPU - núcleos/threads:** AMD Ryzen 5 6600H - 6/12
- **RAM:** 8GB
- **GPU / VRAM (se houver):** NVIDIA GeForce RTX 3050 4GB
- **Ambiente de execução:** WSL2
- **Versão do Ollama:** 0.33.2


## Instalação

### Instalar o Ollama (Linux/WSL2)
curl -fsSL https://ollama.com/install.sh | sh

### Instalar a camada de aplicação (Open WebUI, via Docker)
docker pull ghcr.io/open-webui/open-webui:main

docker run -d -p 3000:8080 \
  -v open-webui:/app/backend/data \
  --name open-webui \
  ghcr.io/open-webui/open-webui:main

### Adaptações realizadas
O endereço sugerido pela documentação oficial (http://host.docker.internal:11434)
não funcionou. Foi necessário configurar manualmente o IP da interface do WSL2
(172.26.19.219:11434) na tela de conexões do Open WebUI (Admin Settings → Connections).

### Diagnóstico do problema (limitações e erros encontrados)
- Erro observado ao tentar host.docker.internal: Connection refused (via curl -v
  de dentro do container)
- ss -tlnp confirmou que o Ollama escuta em todas as interfaces (*:11434)
- curl -v mostrou que host.docker.internal resolve corretamente para 192.168.65.254,
  mas essa não é a mesma sub-rede da distro WSL2 (172.26.19.219, confirmado via
  hostname -I)
- Conclusão: Docker Desktop e a distro WSL2 operam em namespaces de rede distintos,
  mesmo com a integração WSL2 habilitada, a variável host.docker.internal não
  alcança o Ollama nesse cenário

### Baixar o modelo
ollama pull llama3.2:3b

## Execução

### Iniciar o Ollama (padrão, via systemd)
sudo systemctl start ollama

### Acessar a aplicação
Abrir http://localhost:3000 no navegador, configurar a conexão com o Ollama
(172.26.19.219:11434) em Admin Settings → Connections, e selecionar o modelo llama3.2:3b.

## Reprodução dos experimentos

### Configuração 1 — Padrão (GPU)
1. Rodar o Ollama normalmente: `sudo systemctl start ollama`
2. Em outro terminal, rodar o script de monitoramento: `bash scripts/monitor.sh`
3. Enviar os prompts de teste pela interface do Open WebUI 
4. Dados salvos em resultados/resultados_config1.csv e resultados_config1_recursos.csv

### Configuração 2 — Concorrência
1. Com o Ollama já rodando (Configuração 1), disparar múltiplas requisições simultâneas
   pelo Open WebUI
2. Monitorar com: `bash scripts/monitor.sh`
3. Dados salvos em resultados/resultados_config2.csv

### Configuração 3 — Execução forçada em CPU
1. Parar a instância padrão: `sudo systemctl stop ollama`
2. Iniciar manualmente forçando CPU:
   sudo -u ollama CUDA_VISIBLE_DEVICES=-1 OLLAMA_HOST=0.0.0.0:11434 ollama serve
3. Enviar os mesmos prompts de teste pela interface
4. Dados salvos em resultados/resultados_config3.csv

## Estrutura do repositório

```
/relatorio-tecnico.pdf          # item 1 — relatório técnico completo
                                # item 2 — URL/commit/tag/release da camada de aplicação: ver seção "Trilha de aplicação escolhida" acima neste README
/ficha-tecnica-modelo.md        # item 3 — ficha técnica do modelo Hugging Face
/registro-classroom.md          # item 4 — cópia do registro feito no Classroom
/README.md                      # item 5 — este arquivo
/configs/                       # item 6 — docker-compose, Dockerfile, arquivos de config, se houver
/scripts/                       # item 7 — scripts de execução e medição
/resultados/                    # item 8 — logs, tabelas, dados e gráficos
/evidencias/                    # item 9 — evidências de processos, threads, chamadas de sistema, memória, armazenamento
/declaracao-uso-ia.md           # item 10 — Declaração de Uso de IA Generativa
/apresentacao.pdf               # item 11 — slides da apresentação 
/VIDEO.md                       # URL do vídeo da atividade 
```

## Vídeo da atividade

- **URL:** https://drive.google.com/file/d/1_Bv_BxVhiFWYNxPOnXjoYaqvnVrElprZ/view?usp=drivesdk
- **Data de gravação:** 15/09/2026

## Declaração de Uso de IA Generativa
Ver declaracao-uso-ia.md

Ver arquivo `declaracao-uso-ia.md`.

## Relatório técnico

O relatório técnico completo em PDF está disponível em: [preencher caminho no repositório ou link]
