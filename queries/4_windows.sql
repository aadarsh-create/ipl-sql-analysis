USE ipl_analysis;

-- 10. Rank batsmen by runs per season

WITH season_runs AS (
    SELECT d.batter, m.season, SUM(d.batsman_runs) AS runs
    FROM deliveries d
    JOIN matches m ON d.match_id = m.id
    GROUP BY d.batter, m.season
),
ranked AS (
    SELECT *,
        RANK() OVER (PARTITION BY season ORDER BY runs DESC) AS rnk
    FROM season_runs
)
SELECT * FROM ranked WHERE rnk <= 3;

-- 11. Each batsman's runs vs previous season using LAG

WITH season_runs AS (
    SELECT d.batter, m.season, SUM(d.batsman_runs) AS runs
    FROM deliveries d
    JOIN matches m ON d.match_id = m.id
    GROUP BY d.batter, m.season
)
SELECT batter, season, runs,
    LAG(runs, 1) OVER (PARTITION BY batter ORDER BY season) AS prev_season_runs
FROM season_runs;

-- 12. Running total of runs in a match for a batter

SELECT match_id, batter, over_no, batsman_runs,
    SUM(batsman_runs) OVER (PARTITION BY match_id, batter ORDER BY over_no) AS running_total
FROM deliveries
WHERE match_id = 1;