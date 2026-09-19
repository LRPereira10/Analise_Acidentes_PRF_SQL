# PRF Traffic Accidents Analysis

Uma plataforma de Análise Exploratória de Dados (EDA) construída puramente em SQL para investigar a base de acidentes da Polícia Rodoviária Federal de 2023. O projeto tem como foco extrair inteligência de negócio, analisar o comportamento do condutor, medir letalidade viária e aplicar limpeza de ruído estatístico.
Projeto pessoal de portfólio utilizando os Dados Abertos da PRF como fonte de verdade.

🚀 [View the Analytical Queries](analise_exploratoria.sql)

## Overview

O objetivo do projeto é demonstrar proficiência na extração e manipulação de dados utilizando a linguagem SQL de forma nativa. O projeto partiu da aquisição e tratamento do arquivo CSV bruto, passando pela estruturação do banco de dados (DDL), resolução de problemas de *encoding* e tipagem, até a execução de consultas analíticas (DQL) focadas em responder a problemas reais de segurança pública e engenharia de tráfego.

O projeto prioriza a diferenciação entre volume absoluto e gravidade (letalidade), isolamento de variáveis climáticas e descarte de falsos positivos estatísticos.

## Current Status

**Exploratory Data Analysis Foundation — Completed**

A primeira etapa analítica foi implementada e validada com dados reais de 2023.
✅ Dataset PRF adquirido e descompactado
✅ Banco de dados local `projeto_02` configurado
✅ Tabela `acidentes_prf_2023` estruturada (CREATE TABLE / ALTER TABLE)
✅ Resolução de conflitos de *encoding* (LATIN1) e limites de strings (VARCHAR)
✅ Mais de 60.000 registros importados com sucesso
✅ PostgreSQL 16 via pgAdmin 4
✅ Queries com Funções de Agregação (`COUNT`, `SUM`)
✅ Lógicas Condicionais implementadas (`CASE WHEN`)
✅ Limpeza de Ruído Estatístico aplicada (`HAVING`)
✅ Documentação executiva finalizada

As contagens de validação e métricas de letalidade foram calculadas diretamente na *engine* do PostgreSQL.

## Current Data Load

| RAW Table | Records |
| :--- | :--- |
| `acidentes_prf_2023` | ~ 67.000 |
| **Total** | **~ 67.000** |

## Architecture

**Current Flow**

Kaggle / PRF Open Data
      ↓
Acquisition & Extraction
      ↓
Validation & Encoding (LATIN1)
      ↓
PostgreSQL RAW Table
      ↓
Data Structuring (DDL)
      ↓
Exploratory Analytics (DQL / SQL)
      ↓
├── Business Insights (Letalidade, Clima, Geometria)
└── README.md (Executive Report)

A ingestão bruta no banco e a análise exploratória foram feitas no mesmo ambiente para focar no ganho de fluência técnica da linguagem SQL. Integrações com ferramentas de BI e modelagens complexas ficam para as próximas fases.

## Why Pure SQL?

A exploração inicial dos dados diretamente na base através de SQL puro garante proximidade com a fonte de verdade antes de qualquer ferramenta de visualização (como Power BI ou Tableau) criar abstrações. O SQL permitiu:
* calcular **taxas de letalidade percentuais** usando matemática direta na *query*;
* validar premissas e separar **Volume vs. Gravidade** (ex: retas têm mais batidas, mas colisões frontais matam mais);
* garantir a **Relevância Estatística**, aplicando a cláusula `HAVING` para ignorar traçados de via com menos de 100 acidentes no ano, evitando decisões baseadas em ocorrências isoladas.

## Analytical Discoveries

Nesta primeira fase, a plataforma analítica retornou as seguintes respostas ao negócio:
1. **O Fator Humano:** "Reação tardia do condutor" é a maior causa de acidentes em volume, mas "Transitar na contramão" é a mais fatal.
2. **O Risco Temporal:** Domingos na fase de "plena noite" representam o pico crítico absoluto de letalidade nas rodovias brasileiras.
3. **Engenharia de Tráfego:** Trechos de **Reta com Pontes** são estruturalmente os mais letais (17,13% dos acidentes resultam em óbito), contrariando o senso comum de que curvas simples são as mais perigosas.
4. **Condições Climáticas:** O município de **Brasília/DF** lidera o ranking absoluto de ocorrências sob condição de chuva.

## Tech Stack

**Current**
* PostgreSQL 16
* pgAdmin 4
* SQL (DDL e DQL)
* Git & GitHub

**Planned**
* Modelagem Relacional (Uso de `JOIN` e criação de dimensões)
* Power BI — Criação de Dashboards interativos

## Roadmap

**Completed**
* Fundação do repositório;
* Instalação e configuração do PostgreSQL local;
* Tratamento de importação e codificação de caracteres;
* Consultas de Agregação e Filtro (`GROUP BY`, `WHERE`, `AND`);
* Cálculos matemáticos no SQL e limpeza (`HAVING`);
* Extração de insights de negócio.

**Future**
* Implementar `JOIN` para relacionar a tabela de ocorrências com uma tabela separada de pessoas/veículos;
* Conectar o PostgreSQL diretamente ao Power BI para visualização.
