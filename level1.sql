-- 1. Show `sku`, `title`, `master_price` of the 10 most expensive **Active** products.
SELECT 
    sku, title, master_price
FROM
    products
WHERE
    product_status = 'Active'
ORDER BY master_price DESC
LIMIT 10;

-- 2. List the distinct marketplaces in `listings`.
SELECT DISTINCT
    marketplace
FROM
    listings;

-- 3. Find all Apparel products with `master_price` between 500 and 1000, sorted by price.
SELECT 
    *
FROM
    products
WHERE
    master_price BETWEEN 500 AND 1000
        AND category = 'Apparel'
ORDER BY master_price ASC;

-- 4. Find products whose title contains "Serum" or "Lipstick".
SELECT 
    *
FROM
    products
WHERE
    title LIKE '%Serum%'
        OR title LIKE '%Lipstick%';
   
-- 5. How many listings are there in each `listing_status
SELECT 
    COUNT(sku), listing_status AS listing_count
FROM
    listings
GROUP BY listing_status;