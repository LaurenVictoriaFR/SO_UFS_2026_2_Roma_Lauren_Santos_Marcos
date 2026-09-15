# Declaração de Uso de IA Generativa

*Item 10 dos entregáveis.*

- **Ferramenta(s) e modelo(s) utilizados:** [Claude code(Sonnet), Gemini 3.6 Flash/ 3.1 Pro e ChatGPT GPT-5.6 Luna.]
- **Finalidade de cada uso:** [Instalação, busca de referências, tradução, idealização de estrutura textual.]
- **Prompts relevantes utilizados (até 5):**
  1. [Diagnóstico do erro host.docker.internal]
  2. [ Traduzir documentação oficial]
  3. [Como forçar o Ollama a rodar somente em CPU, sem usar a GPU, para a Configuração 3 do experimento]
  4. [Relacionar o uso de memória e CPU durante a inferência do Ollama com os conceitos de Sistemas Operacionais.]
  5. [Pedido de rascunho inicial das seções 11 e 13 com base nos dados de processos, chamadas de sistema e resultados coletados]

- **Síntese das sugestões aproveitadas:** 
[1 -  Sequência de comandos (ss, curl -v, hostname -I) que revelou Docker Desktop e WSL2 em redes distintas]
[2 -  Textos traduzidos] 
[5 - Texto conectando os números já coletados pela equipe (fila FIFO, swap, chamadas de sistema, quantização) aos pontos exigidos no roteiro do enunciado] 

- **Sugestões corrigidas ou rejeitadas:**
[3 - Primeira sugestão apontou o parâmetro num_gpu=0, encontrado em discussões de comunidade (não documentação oficial). Após verificação em docs.ollama.com/gpu, a resposta foi corrigida para a variável de ambiente oficial CUDA_VISIBLE_DEVICES=-1, usada para lançar a instância] 
[4 - A IA mostrou o consumo de CPU e memória aos conceitos de SO, porém apresentou uma explicação predominantemente teórica e genérica, sem considerar suficientemente os resultados específicos obtidos nos testes. ] 

- **Erros encontrados:** 
[A sugestão inicial (num_gpu) veio de fontes não-oficiais (fóruns/comunidade) e não foi sinalizada de imediato como não-verificada; só após questionamento da confiabilidade é que a resposta foi checada contra a documentação oficial do Ollama]

- **Testes/documentação/observações usadas para verificar as respostas da IA:** [Consulta direta à documentação oficial (docs.ollama.com/gpu), confirmando CUDA_VISIBLE_DEVICES=-1 como mecanismo suportado; validado na 
prática rodando a instância e conferindo em ollama ps que o uso de GPU ficou em 0%, , além de busca por fontes seguras como a bibliografia disposta no final do documento.]

- **Distribuição das contribuições dos integrantes:** 
[Carlos Henrico Fontes Cabral -  Utilizou o Gemini para auxiliar no diagnóstico dos parâmetros do ambiente Ollama/Open WebUI] 
[Daniel de Andrade Lima - Utilizou a Inteligência Artificial (Google Gemini) para auxiliar no processamento de tabelas e dados, ideação e estruturação de texto, pesquisas básicas de terminologia e tradução textual.] [Lauren Victoria Ferreira Roma - Utilizou IA generativa (Claude Code) para pesquisar e verificar o método de execução forçada em CPU usado na Configuração 3 do experimento e para diagnóstico e configuração do ambiente WSL2/Docker/Ollama.]
[Marcos Vinícios Assunção Nery Santos - Utilizou a Inteligência Artificial (Google Gemini) como suporte técnico para o diagnóstico de erros de rede, liberação de portas e configuração inicial da integração entre WSL2, Docker e Ollama. Adicionalmente, empregou a ferramenta como apoio para o brainstorming de tópicos, revisão e organização lógica das ideias que fundamentaram a escrita das Seções 2 e 15.]
[Roseane Resende Couto - Utilizou a Inteligência Artificial (Claude, Anthropic) para auxiliar no refinamento da discussão dos resultados, na estruturação textual dos dados coletados e na simplificação de linguagem técnica da Seção 11.]
[Wanessa Silva Santos - Utilizou a IA(ChatGPT GPT-5.6 Luna) como apoio à análise e organização das informações técnicas, à relação entre os conceitos de Sistemas Operacionais e IA generativa, mantendo a conferência dos resultados com as evidências obtidas pela equipe.]

> Lembrete do pdf da AV1: respostas de IA não substituem comandos, logs, dados, medições, código executável, documentação oficial ou análise da equipe.
