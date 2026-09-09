SELECT
    advertiser_id,
    ROUND((SUM(revenue) * 1.0 / SUM(spend)), 2) AS ROAS
FROM ad_campaigns
GROUP BY advertiser_id
ORDER BY advertiser_id;