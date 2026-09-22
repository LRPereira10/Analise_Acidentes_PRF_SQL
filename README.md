🚦 End-to-End Data Analytics: PRF Traffic Accidents (SQL & Power BI)

Uma plataforma de Análise Exploratória de Dados (EDA) e Business Intelligence construída para investigar a base de acidentes da Polícia Rodoviária Federal de 2023. O projeto abrange o ciclo completo dos dados (End-to-End): extração e modelagem relacional puramente em PostgreSQL, culminando na criação de um Dashboard Executivo interativo em Power BI.

O foco é extrair inteligência de negócio, analisar o comportamento do condutor, medir letalidade viária e aplicar limpeza de ruído estatístico. Projeto pessoal de portfólio utilizando os Dados Abertos da PRF como fonte de verdade.

📌 Overview

O objetivo do projeto é demonstrar proficiência na manipulação de ponta a ponta de um pipeline de dados.

Engenharia e Análise (Backend): Partiu da aquisição e tratamento do arquivo CSV bruto, estruturação do banco de dados (DDL), resolução de problemas de encoding e tipagem, até a execução de consultas analíticas complexas (DQL) em SQL.

Business Intelligence (Frontend): Conexão do banco de dados ao Power BI para modelagem dimensional, criação de métricas avançadas com DAX e aplicação de técnicas de Storytelling visual para guiar a tomada de decisão.

O projeto prioriza a diferenciação entre volume absoluto e gravidade (letalidade), isolamento de variáveis climáticas e descarte de falsos positivos estatísticos.

🚀 Current Status

Fase 1 & 2: Engenharia de Dados e Relacionamentos (SQL) — Completed ✅
Dataset PRF adquirido e descompactado;

Banco de dados local projeto_02 configurado;

Tabelas acidentes_prf_2023 e acid_pessoas_2023 estruturadas;

Limpeza de strings invisíveis nas chaves primárias usando TRIM();

Cruzamento de dados relacionais utilizando INNER JOIN;

Limpeza de Ruído Estatístico aplicada (HAVING).

Fase 3: Business Intelligence & Visualização (Power BI) — Completed ✅
Conexão direta aos dados modelados via importação;

Criação de medidas calculadas em DAX com transição de contexto (ex: Taxa de Letalidade = DIVIDE(SUM(mortos), DISTINCTCOUNT(id), 0));

Aplicação de filtros contextuais (Top N) para remoção de outliers de baixa relevância estatística na frota;

Desenvolvimento de Layout Executivo com Design Estratégico de Cores (Azul/Cinza para contexto de volume; Laranja para alertas de letalidade).

🗄️ Current Data Load

| RAW Table | Categoria |
| :--- | :--- |
| `acidentes_prf_2023` | Ocorrências Gerais e Clima |
| `acid_pessoas_2023` | Frota Envolvida e Vítimas |

🏗️ Architecture Flow

Kaggle / PRF Open Data
       ↓
Acquisition & Extraction
       ↓
Validation & Encoding (LATIN1)
       ↓
PostgreSQL RAW Tables
       ↓
Data Structuring & Primary Keys (DDL)
       ↓
Relational Analytics (DQL / INNER JOIN)
       ↓
Power BI Data Modeling & DAX Metrics
       ↓
├── Business Insights (Letalidade, Clima, Frota)
└── Executive Dashboard (.pbix / .pdf)

📊 Principais Insights Descobertos
Através da união das consultas SQL com a visualização dinâmica no Power BI, a plataforma retornou as seguintes respostas ao negócio:

O Fator Humano supera o Ambiental: A esmagadora maioria dos acidentes ocorreu sob Céu Claro e em Pleno Dia. Isso indica que condições de aparente segurança geram excesso de confiança, distração e maior velocidade por parte dos condutores, sobrepondo-se aos riscos de intempéries (chuva/neblina).

A Causa vs. A Consequência: "Reação tardia do condutor" é a maior causa de acidentes em volume, mas "Transitar na contramão" é estatisticamente a mais fatal.

O Risco Temporal e Estrutural: Domingos na fase de "plena noite" representam o pico crítico absoluto de letalidade nas rodovias. Engenheiramente, Trechos de Reta com Pontes mostraram-se os mais letais (17,13% dos acidentes resultam em óbito), contrariando o senso comum das curvas perigosas.

Vulnerabilidade da Frota (Volume vs. Risco): Os Automóveis lideram o volume absoluto de acidentes. No entanto, ao cruzar a tabela de ocorrências com a base da frota, a Taxa de Letalidade comprovou matematicamente que Bicicletas (11%), Ciclomotores e Motocicletas lideram o risco de morte devido à exposição física, seguidos por Micro-ônibus e Ônibus (pela alta densidade de passageiros num único evento).

🛠️ Tech Stack
Current:

PostgreSQL 16 & pgAdmin 4: DDL, DQL, Modelagem Relacional e ETL.

Power BI: Modelagem de Dados, DAX, Filtros Contextuais e Storytelling Visual.

Git & GitHub: Versionamento e documentação.

🗺️ Roadmap & Próximos Passos (Future)
Machine Learning (Python): Criar um modelo preditivo simples (Regressão Logística ou Árvore de Decisão) para prever a probabilidade de um acidente ser fatal com base nas condições climáticas e horário.

Análise YoY: Incluir dados de 2024 para fazer uma análise de tendência histórica (Year-over-Year).

📞 Contato
Sinta-se à vontade para entrar em contato comigo para falarmos sobre Dados, oportunidades ou trocar ideias sobre este projeto!

LinkedIn: https://www.linkedin.com/in/lucas-pereira-78926b363/

E-mail: lrpereira2507@gmail.com
