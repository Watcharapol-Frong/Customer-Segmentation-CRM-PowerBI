-- One-way ANOVA type_ROI
SELECT 
  campaign_type,
  roi
FROM customer_segmentation
WHERE campaign_type IS NOT NULL
  AND roi IS NOT NULL;

-- AVG ROI by Campaign Type  
SELECT 
  campaign_type,
  COUNT(*) AS n,
  AVG(roi) AS avg_roi,
  STDDEV(roi) AS std_dev
FROM customer_segmentation
GROUP BY campaign_type;

-- One-way ANOVA rate_segment
SELECT 
  customer_segment,
  conversion_rate
FROM customer_segmentation
WHERE customer_segment IS NOT NULL
  AND conversion_rate IS NOT NULL;

-- One-way ANOVA type_score
SELECT 
  campaign_type,
  engagement_score
FROM customer_segmentation
WHERE campaign_type IS NOT NULL
  AND engagement_score IS NOT NULL;

-- chi_channel_segment
SELECT 
  channel_used,
  customer_segment,
  COUNT(*) AS count
FROM customer_segmentation
GROUP BY channel_used, customer_segment
ORDER BY channel_used, customer_segment;
  
-- chi_type_segment
SELECT 
  campaign_type,
  customer_segment,
  COUNT(*) AS count
FROM customer_segmentation
GROUP BY campaign_type, customer_segment
ORDER BY campaign_type, customer_segment;

-- chi_channel_type
SELECT 
  campaign_type,
  channel_used,
  COUNT(*) AS count
FROM customer_segmentation
GROUP BY campaign_type, channel_used
ORDER BY campaign_type, channel_used;
