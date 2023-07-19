USE ddmban_sql_analysis;
/* I first began creating a table using WITH to have the price in the same format. 
   From the row 1 to 220 we have a incorrect price and we need to alter it, therefore we use CASE to correct it.
*/ 
WITH correct_ddmban_data AS
							(SELECT ID, category, subcategory,
                            product, vegan, glutenfree, ketofriendly, 
                            vegetarian, organic, dairyfree, sugarconscious, 
                            paleofriendly, wholefoodsdiet, lowsodium,
							kosher, lowfat , engine2, caloriesperserving,
CASE 
WHEN ID <= 220 THEN ROUND(price / 100, 2) 
ELSE price
END AS new_price FROM ddmban_data)

/* Here I start puting the data together in this new table.
   My strategy is to put one below the other to see the difference.
   For all of them I started with the products that do have that certain dietary preference
   and then continued with the one that does not have that dietary preferece.
*/
SELECT
CASE WHEN `vegan` = 1 
	 THEN 'vegan' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `vegan` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT
CASE WHEN `vegan` = 0 
	 THEN 'nonvegan' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `vegan` = 0
GROUP BY dietarypreferences

UNION ALL 
SELECT 
CASE WHEN `glutenfree` = 1 
	 THEN 'glutenfree'
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `glutenfree` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT
CASE WHEN `glutenfree` = 0 
	 THEN 'nonglutenfree'
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `glutenfree` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `ketofriendly` = 1 
	 THEN 'ketofriendly' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `ketofriendly` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `ketofriendly` = 0 
	 THEN 'nonketofriendly' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `ketofriendly` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `vegetarian` = 1 
	 THEN 'vegetarian' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `vegetarian` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `vegetarian` = 0
	 THEN 'nonvegetarian' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `vegetarian` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `organic` = 1 
	 THEN 'organic' 
	 END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `organic` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `organic` = 0 
	 THEN 'nonorganic' 
	 END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `organic` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `dairyfree` = 1 
	 THEN 'dairyfree' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `dairyfree` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `dairyfree` = 0 
	 THEN 'nondairyfree' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `dairyfree` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `sugarconscious` = 1 
	 THEN 'sugarconscious' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `sugarconscious` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `sugarconscious` = 0 
	 THEN 'nonsugarconscious' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `sugarconscious` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `paleofriendly` = 1 
	 THEN 'paleofriendly' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `paleofriendly` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `paleofriendly` = 0 
	 THEN 'nonpaleofriendly' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `paleofriendly` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `wholefoodsdiet` = 1 
	 THEN 'wholefoodsdiet' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `wholefoodsdiet` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `wholefoodsdiet` = 0 
	 THEN 'nonwholefoodsdiet' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `wholefoodsdiet` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `lowsodium` = 1 
	 THEN 'lowsodium' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `lowsodium` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `lowsodium` = 0
	 THEN 'nonlowsodium' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `lowsodium` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `kosher` = 1 
	 THEN 'kosher' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `kosher` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `kosher` = 0 
	 THEN 'nonkosher' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `kosher` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `lowfat` = 1 
	 THEN 'lowfat' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `lowfat` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `lowfat` = 0 
	 THEN 'nonlowfat' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `lowfat` = 0
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `engine2` = 1 
	 THEN 'engine2' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `engine2` = 1
GROUP BY dietarypreferences

UNION ALL
SELECT 
CASE WHEN `engine2` = 0 
	 THEN 'engine2' 
     END AS dietarypreferences,
FORMAT (AVG(new_price),2) AS avg_price,
COUNT(ID) AS total_num_of_products
FROM correct_ddmban_data
WHERE `engine2` = 0
GROUP BY dietarypreferences
;
