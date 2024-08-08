--  lists all bands with Glam rock as their main style, ranked by their longevity
SELECT 
    band_name As band_name,
IFNULL(split, 2020) - IFNULL(formed, 0) As lifespan
FROM 
    metal_bands
WHERE 
    '%Glam rock%'
ORDER BY 
    lifespan DESC;
