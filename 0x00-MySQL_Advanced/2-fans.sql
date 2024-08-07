-- Ensure you have the metal_bands table imported in your database

-- SQL script to rank country origins by the number of fans
SELECT 
    origin, 
    SUM(nb_fans) AS total_fans
FROM 
    metal_bands
GROUP BY 
    origin
ORDER BY 
    total_fans DESC;
