-- Description: Window functions allow calculations across rows related to the current row. Frame specifications offer precise control over which rows are included in these calculations. This is crucial for:

-- Time-series analysis: Calculating moving averages, cumulative sums, or trends over time.
-- Ranking and percentiles: Determining the rank of a value within a group.
-- Example:
SELECT
    timestamp,
    value,
    AVG(value) OVER (ORDER BY timestamp ROWS BETWEEN 5 PRECEDING AND CURRENT ROW) AS moving_average_7_day
FROM
    sensor_data; 
