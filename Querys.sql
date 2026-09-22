SELECT 
    uf, 
    COUNT(*) AS total_acidentes 
FROM 
    acidentes_prf_2023 
GROUP BY 
    uf 
ORDER BY 
    total_acidentes DESC 
LIMIT 5;

SELECT 
    causa_acidente, 
    COUNT(*) AS total_acidentes 
FROM 
    acidentes_prf_2023 
GROUP BY 
    causa_acidente 
ORDER BY 
    total_acidentes DESC 
LIMIT 5;

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

SELECT 
    tracado_via, 
    COUNT(*) AS total_acidentes
FROM 
    acidentes_prf_2023 
GROUP BY 
    tracado_via
ORDER BY 
    total_acidentes DESC;

SELECT 
    tracado_via, 
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_obitos
FROM 
    acidentes_prf_2023 
GROUP BY 
    tracado_via
ORDER BY 
    total_obitos DESC;

SELECT 
    tracado_via, 
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_obitos,
    ROUND((SUM(mortos) * 100.0 / COUNT(*)), 2) AS taxa_letalidade_pct
FROM 
    acidentes_prf_2023 
GROUP BY 
    tracado_via
ORDER BY 
    taxa_letalidade_pct DESC;



