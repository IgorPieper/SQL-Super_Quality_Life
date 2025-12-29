-- Index - copy of data with prepered algorithm for faster seeking data that we need

-- Creating Index
CREATE INDEX idx_countrycode ON city (countrycode);

-- Using Index
EXPLAIN ANALYZE -- Showing how fast query was
SELECT "name", district, countrycode
FROM city
WHERE countrycode IN ('TUN', 'BEL', 'NLD');

-- Creating Index with specyfied algorithm (in this instans hash algorithm)
CREATE INDEX idx_countrycode ON city USING hash (countrycode);

-- Deleting Index
DROP INDEX idx_countrycode;
