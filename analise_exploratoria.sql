-- ==============================================================================
-- ANÁLISE EXPLORATÓRIA DE DADOS (EDA) - ACIDENTES PRF 2023
-- Autor: Lucas
-- Banco de Dados: PostgreSQL
-- ==============================================================================

-- 1. Volume vs Letalidade: Causas de acidentes com maior número absoluto de óbitos
SELECT 
    causa_acidente, 
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_obitos
FROM 
    acidentes_prf_2023 
GROUP BY 
    causa_acidente 
ORDER BY 
    total_obitos DESC 
LIMIT 5;

-- 2. Filtro Regional: Rodovias federais (BR) com mais acidentes no estado de MG
SELECT 
    br, 
    COUNT(*) AS total_acidentes 
FROM 
    acidentes_prf_2023 
WHERE 
    uf = 'MG'
GROUP BY 
    br 
ORDER BY 
    total_acidentes DESC 
LIMIT 5;

-- 3. Categorização Dinâmica: Proporção de acidentes com e sem vítimas fatais
SELECT 
    CASE 
        WHEN mortos > 0 THEN 'Com Vítima Fatal'
        ELSE 'Sem Vítima Fatal'
    END AS gravidade_acidente,
    COUNT(*) AS total_ocorrencias
FROM 
    acidentes_prf_2023
GROUP BY 
    gravidade_acidente
ORDER BY 
    total_ocorrencias DESC;

-- 4. O Fator Tempo e Fadiga: Dias da semana com maior número de acidentes fatais
SELECT 
    dia_semana, 
    COUNT(*) AS total_acidentes_fatais 
FROM 
    acidentes_prf_2023 
WHERE 
    mortos > 0 
GROUP BY 
    dia_semana 
ORDER BY 
    total_acidentes_fatais DESC;

-- 5. Cruzamento de Variáveis: Fase do dia mais crítica aos domingos
SELECT 
    fase_dia, 
    COUNT(*) AS total_fatais 
FROM 
    acidentes_prf_2023 
WHERE 
    mortos > 0 AND dia_semana = 'domingo'
GROUP BY 
    fase_dia 
ORDER BY 
    total_fatais DESC;

-- 6. Geometria da Via e Ruído Estatístico: Taxa de letalidade por traçado (amostras >= 100)
SELECT 
    tracado_via, 
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_obitos,
    ROUND((SUM(mortos) * 100.0 / COUNT(*)), 2) AS taxa_letalidade_pct
FROM 
    acidentes_prf_2023 
GROUP BY 
    tracado_via
HAVING 
    COUNT(*) >= 100
ORDER BY 
    taxa_letalidade_pct DESC;

-- 7. Condições Climáticas: Municípios com mais acidentes sob chuva
SELECT
    municipio,
    COUNT(*) AS total_acidentes
FROM
    acidentes_prf_2023
WHERE
    condicao_metereologica = 'Chuva'
GROUP BY
    municipio
ORDER BY
    total_acidentes DESC
LIMIT 5;
