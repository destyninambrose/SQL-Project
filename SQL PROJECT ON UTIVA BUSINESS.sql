--             SECTION A
/* PLEASE REMOVE THE COMMENT BELOW TO CREATE anglophone and francophone tables.*/

-- Init
-- SELECT * INTO anglophone
-- FROM brewery_data
-- WHERE "COUNTRIES" IN ('Nigeria', 'Ghana');

-- SELECT * INTO francophone
-- FROM brewery_data
-- WHERE "COUNTRIES" NOT IN ('Nigeria', 'Ghana');

-- -- -- NO 1
SELECT "BRANDS", "YEARS", SUM("PROFIT") AS "PROFITS"
FROM brewery_data
GROUP BY "BRANDS", "YEARS";

-- -- -- NO 2
SELECT SUM("PROFIT") AS "ANGLO",
	(SELECT SUM("PROFIT") AS "FRANCO"
	FROM francophone)
FROM anglophone;

-- -- -- NO 3
SELECT "COUNTRIES", "YEARS", SUM("PROFIT") AS "PROFIT"
FROM "Brewery_data"
WHERE "YEARS" = '2019'
group by "COUNTRIES", "YEARS"
ORDER  BY "PROFIT" DESC
;


-- -- -- NO 4

SELECT "YEARS", SUM("PROFIT") AS "TOTAL_PROFIT"
FROM "Brewery_data"
GROUP BY "YEARS"
ORDER BY "TOTAL_PROFIT" DESC
;


-- -- -- NO 5


SELECT "YEARS", "MONTHS", SUM("PROFIT") AS "PROFIT"
FROM "Brewery_data"
GROUP BY "YEARS", "MONTHS"
ORDER BY "PROFIT" ASC
LIMIT 1
;

-- -- -- NO 6

SELECT "YEARS", "MONTHS", MIN("PROFIT") AS "PROFIT"
FROM "Brewery_data"
WHERE "YEARS" = '2018'
AND "MONTHS" = 'December'
group by "YEARS", "MONTHS"
;

-- -- -- NO 7

select "YEARS", "MONTHS", SUM(("PROFIT")/("COST"))* 100 AS "PERCENTAGE_PROFIT"
from "Brewery_data"
WHERE "YEARS" = '2019'
GROUP BY "YEARS", "MONTHS"
;


-- -- -- NO 8


SELECT "COUNTRIES", "BRANDS", MAX("PROFIT") AS "PROFIT"
FROM "Brewery_data"
WHERE "COUNTRIES" = 'Senegal'
group by "COUNTRIES", "BRANDS"
ORDER BY "PROFIT" DESC
;



-- -- -- -- -- --  SWECTION B
-- -- -- N0 1
select "COUNTRIES", "BRANDS", "YEARS", sum("QUANTITY") AS "QUANTITY"
from "Brewery_data"
WHERE "COUNTRIES" NOT IN ('Nigeria','Ghana')
AND "YEARS" IN ('2017', '2018')
GROUP BY "COUNTRIES", "BRANDS", "YEARS"
ORDER BY "QUANTITY" DESC
LIMIT 3
;

-- -- -- NO 2
SELECT "COUNTRIES", "BRANDS", SUM("QUANTITY") AS "QUANTITY"
FROM "Brewery_data"
WHERE "COUNTRIES" = 'Ghana'
group by "COUNTRIES", "BRANDS"
ORDER BY "QUANTITY" desc
limit 2 ;

-- -- --  NO 3
select "SALES_ID", "SALES_REP","EMAILS", "BRANDS", "PLANT_COST", "UNIT_PRICE", sum("QUANTITY") AS "QUANTITY"
from "Brewery_data"
where "BRANDS" NOT IN ('beta malt', 'grand malt')
and "COUNTRIES" = 'Nigeria'
GROUP BY "SALES_ID", "SALES_REP", "EMAILS", "BRANDS", "PLANT_COST", "UNIT_PRICE"
ORDER BY "QUANTITY" DESC
;

-- -- -- N0 4
SELECT "COUNTRIES", "BRANDS", SUM("QUANTITY") AS "QUANTITY"
FROM "Brewery_data"
where "COUNTRIES" IN ('Nigeria', 'Ghana')
AND "BRANDS" IN ('beta malt','grand malt')
GROUP BY "COUNTRIES", "BRANDS"
ORDER BY "QUANTITY" DESC;


-- -- -- NO 5
SELECT "COUNTRIES", "BRANDS", "YEARS", SUM("QUANTITY") AS "QUANTITY"
FROM "Brewery_data"
where "COUNTRIES" = 'Nigeria'
and "YEARS" = '2019'
GROUP BY "COUNTRIES", "BRANDS", "YEARS"
ORDER BY "QUANTITY" DESC
LIMIT 1 
;

-- -- -- NO 6
SELECT "COUNTRIES", "REGION", "BRANDS", sum("QUANTITY") AS "QUANTITY"
FROM "Brewery_data"
WHERE "COUNTRIES" = 'Nigeria'
and "REGION" = 'southsouth'
GROUP BY "COUNTRIES", "REGION", "BRANDS"
ORDER BY "QUANTITY" DESC
LIMIT 1 ;

-- -- -- NO 7
 select DISTINCT"COUNTRIES", "BRANDS"
from "Brewery_data"
WHERE "BRANDS" NOT IN ('beta malt', 'grand malt')
and "COUNTRIES" = 'Nigeria';

-- -- -- NO 8
SELECT "COUNTRIES", "BRANDS", "REGION", SUM("QUANTITY") AS "QUANTITY"
FROM "Brewery_data"
WHERE "COUNTRIES" = 'Nigeria'
and "BRANDS" = 'budweiser'
GROUP BY "COUNTRIES", "BRANDS", "REGION"
;

-- -- -- NO 9
SELECT "COUNTRIES", "REGION", "BRANDS", "YEARS", SUM("QUANTITY") AS "QUANTITY"
FROM "Brewery_data"
WHERE "COUNTRIES" = 'Nigeria'
and "BRANDS" = 'budweiser'
and "YEARS" = '2019'
GROUP BY "COUNTRIES", "REGION", "BRANDS", "YEARS"
ORDER BY "QUANTITY" DESC
;

-- -- --   SECTION C
-- -- -- NO 1
SELECT "COUNTRIES", SUM("QUANTITY") AS "QUANTITIES"
FROM beers
GROUP BY "COUNTRIES"
ORDER BY "QUANTITIES" DESC
LIMIT 1;

-- -- -- NO 2
SELECT "SALES_REP", SUM("PROFIT") AS "PROFITS"
FROM brewery_data
WHERE "BRANDS" = 'budweiser'
	AND "COUNTRIES" = 'Senegal'
GROUP BY "SALES_REP"
ORDER BY "PROFITS" DESC
LIMIT 1;

-- -- -- NO 3
SELECT "COUNTRIES", "MONTHS", SUM("PROFIT") AS "PROFITS"
FROM brewery_data
WHERE "YEARS" = 2019
	AND "MONTHS" IN ('October', 'November', 'December')
GROUP BY "COUNTRIES", "MONTHS"
ORDER BY "PROFITS" DESC
LIMIT 1;

