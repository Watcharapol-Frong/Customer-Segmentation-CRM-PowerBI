-- Data Validation
-- Check rows
SELECT COUNT(*) AS total_rows FROM customer_segmentation;

-- Check Duplicated (DISTINCT)
SELECT campaign_id, COUNT(*) 
FROM customer_segmentation
GROUP BY campaign_id
HAVING COUNT(*) > 1;

-- Chenk Missing (IS NULL)
SELECT 
  SUM(campaign_type IS NULL) AS missing_campaign_type,
  SUM(channel_used IS NULL) AS missing_channel,
  SUM(target_audience IS NULL) AS missing_audience,
  SUM(customer_segment IS NULL) AS missing_segment,
  SUM(conversion_rate IS NULL) AS missing_conversion,
  SUM(engagement_score IS NULL) AS missing_engagement,
  SUM(acquisition_cost IS NULL) AS missing_cost,
  SUM(roi IS NULL) AS missing_roi,
  SUM(date IS NULL) AS missing_date
FROM customer_segmentation;

-- Chenk Conversion Rate & ROI
SELECT * FROM customer_segmentation
WHERE conversion_rate > 1;
SELECT * FROM customer_segmentation
WHERE roi < -100 OR roi > 100;

-- Show dataset 10 row
SELECT * FROM customer_segmentation LIMIT 10;
