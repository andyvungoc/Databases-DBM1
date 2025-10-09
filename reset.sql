-- /Users/andyvungoc/TDA553/Databases-DBM1/reset.sql
-- Drop in FK-safe order, then rebuild & reload
DROP TABLE IF EXISTS track CASCADE;
DROP TABLE IF EXISTS album CASCADE;
DROP TABLE IF EXISTS artist CASCADE;
DROP TABLE IF EXISTS genre CASCADE;

\i '/Users/andyvungoc/TDA553/Databases-DBM1/tables.sql'
\i '/Users/andyvungoc/TDA553/Databases-DBM1/insertion.sql'

-- Verify
SELECT 'genre rows'  AS label, COUNT(*) FROM genre;
SELECT 'artist rows' AS label, COUNT(*) FROM artist;
SELECT 'album rows'  AS label, COUNT(*) FROM album;
SELECT 'track rows'  AS label, COUNT(*) FROM track;
