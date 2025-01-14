-- Dropping one column as it will not being used for analyzing
ALTER TABLE food_delivery_times
DROP COLUMN Order_ID;
-- Rename one of the column to Time delivery 
ALTER TABLE food_delivery_times
RENAME COLUMN Delivery_Time_min TO Time_Delivery;

-- Replacing the missing data to unknown if there is any missing. 
UPDATE food_delivery_times
SET Weather = 'Unknown'
WHERE Weather = '';

UPDATE food_delivery_times
SET Traffic_Level = 'Unknown'
WHERE Traffic_Level = '';

UPDATE food_delivery_times
SET Time_of_Day = 'Unknown'
WHERE Time_of_Day = '';

SELECT * FROM food_delivery_times 
