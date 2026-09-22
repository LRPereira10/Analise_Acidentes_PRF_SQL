# PRF Traffic Accidents Analysis

Uma plataforma de Análise Exploratória de Dados (EDA) construída puramente em SQL para investigar a base de acidentes da Polícia Rodoviária Federal de 2023. O projeto tem como foco extrair inteligência de negócio, analisar o comportamento do condutor, medir letalidade viária e aplicar limpeza de ruído estatístico.
Projeto pessoal de portfólio utilizando os Dados Abertos da PRF como fonte de verdade.

🚀 [View the Analytical Queries](analise_exploratoria.sql)

## Overview

O objetivo do projeto é demonstrar proficiência na extração e manipulação de dados utilizando a linguagem SQL de forma nativa. O projeto partiu da aquisição e tratamento do arquivo CSV bruto, passando pela estruturação do banco de dados (DDL), resolução de problemas de *encoding* e tipagem, até a execução de consultas analíticas (DQL) focadas em responder a problemas reais de segurança pública e engenharia de tráfego.

O projeto prioriza a diferenciação entre volume absoluto e gravidade (letalidade), isolamento de variáveis climáticas e descarte de falsos positivos estatísticos.

## Current Status

**Fase 2: Relacionamento de Tabelas (JOIN) — Completed**

A base analítica foi expandida para suportar múltiplas tabelas conectadas.
✅ Dataset PRF adquirido e descompactado
✅ Banco de dados local `projeto_02` configurado
✅ Tabelas `acidentes_prf_2023` e `acid_pessoas_2023` estruturadas
✅ Limpeza de strings invisíveis nas chaves primárias usando `TRIM()`
✅ Cruzamento de dados relacionais utilizando `INNER JOIN`
✅ Queries com Funções de Agregação (`COUNT`, `SUM`)
✅ Lógicas Condicionais implementadas (`CASE WHEN`)
✅ Limpeza de Ruído Estatístico aplicada (`HAVING`)

## Current Data Load

| RAW Table | Categoria |
| :--- | :--- |
| `acidentes_prf_2023` | Ocorrências Gerais e Clima |
| `acid_pessoas_2023` | Frota Envolvida e Vítimas |

## Architecture

**Current Flow**

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
├── Business Insights (Letalidade, Clima, Frota)
└── README.md (Executive Report)

## Analytical Discoveries

Nesta fase analítica, a plataforma retornou as seguintes respostas ao negócio:
1. **O Fator Humano:** "Reação tardia do condutor" é a maior causa de acidentes em volume, mas "Transitar na contramão" é a mais fatal.
2. **O Risco Temporal:** Domingos na fase de "plena noite" representam o pico crítico absoluto de letalidade nas rodovias brasileiras.
3. **Engenharia de Tráfego:** Trechos de **Reta com Pontes** são estruturalmente os mais letais (17,13% dos acidentes resultam em óbito), contrariando o senso comum de que curvas simples são as mais perigosas.
4. **Condições Climáticas:** O município de **Brasília/DF** lidera o ranking absoluto de ocorrências sob condição de chuva.
5. **Vulnerabilidade Estrutural (Insights via JOIN):** Ao cruzar a tabela de ocorrências com a base da frota, comprovamos matematicamente que Bicicletas, Ciclomotores e Motocicletas lideram as taxas de letalidade devido à exposição física, seguidos imediatamente por Micro-ônibus e Ônibus (pela alta densidade de passageiros em um único evento).

## Tech Stack

**Current**
* PostgreSQL 16
* pgAdmin 4
* SQL (DDL, DQL e Modelagem Relacional)
* Git & GitHub

**Planned**
* Power BI — Criação de Dashboards interativos

## Roadmap

**Completed**
* Fundação do repositório;
* Tratamento de importação e codificação de caracteres;
* Consultas de Agregação e Filtro (`GROUP BY`, `WHERE`, `AND`);
* Cálculos matemáticos no SQL e limpeza (`HAVING`);
* **Fase 2:** Implementação de `INNER JOIN` e funções de formatação (`TRIM`, `NULLIF`) para cruzar tabelas de ocorrências e veículos.

**Future**
* Conectar o PostgreSQL diretamente ao Power BI para visualização interativa dos dados.
