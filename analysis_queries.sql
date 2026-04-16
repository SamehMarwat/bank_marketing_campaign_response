-- Campaign conversion KPI
SELECT
    COUNT(*) AS contacted_customers,
    SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) AS conversions,
    ROUND(100.0 * SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate_pct
FROM bank_marketing;

-- Conversion by contact channel
SELECT
    contact,
    COUNT(*) AS contacts,
    ROUND(100.0 * SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate_pct
FROM bank_marketing
GROUP BY contact
ORDER BY conversion_rate_pct DESC;

-- Conversion by job segment
SELECT
    job,
    COUNT(*) AS contacts,
    ROUND(100.0 * SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate_pct
FROM bank_marketing
GROUP BY job
HAVING COUNT(*) >= 100
ORDER BY conversion_rate_pct DESC;

-- Campaign fatigue
SELECT
    campaign,
    COUNT(*) AS contacts,
    ROUND(100.0 * SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate_pct
FROM bank_marketing
GROUP BY campaign
ORDER BY campaign;

