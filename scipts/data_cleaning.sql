-- Data Cleaning
-- Delete rows with incomplete data
DELETE FROM customer_segmentation
WHERE campaign_type IS NULL 
   OR customer_segment IS NULL 
   OR conversion_rate IS NULL;
   
-- Adjust conversion_rate if greater than 1  
UPDATE customer_segmentation
SET conversion_rate = conversion_rate / 100
WHERE conversion_rate > 1;

-- Convert format date column
UPDATE customer_segmentation
SET date = STR_TO_DATE(date, '%d/%m/%Y')
WHERE date LIKE '%/%';

-- Create a separate column by Quarter (Q1, Q2...)
ALTER TABLE customer_segmentation ADD COLUMN campaign_quarter VARCHAR(3);

UPDATE customer_segmentation
SET campaign_quarter = 
  CASE 
    WHEN MONTH(date) BETWEEN 1 AND 3 THEN 'Q1'
    WHEN MONTH(date) BETWEEN 4 AND 6 THEN 'Q2'
    WHEN MONTH(date) BETWEEN 7 AND 9 THEN 'Q3'
    WHEN MONTH(date) BETWEEN 10 AND 12 THEN 'Q4'
    ELSE 'N/A'
  END;
