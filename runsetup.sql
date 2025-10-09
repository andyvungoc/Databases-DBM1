\i '/Users/andyvungoc/TDA553/Databases-DBM1/tables.sql'
\i '/Users/andyvungoc/TDA553/Databases-DBM1/insertion.sql'

-- Quick verification
SELECT 'genre rows'  AS label, COUNT(*) FROM genre;
SELECT 'artist rows' AS label, COUNT(*) FROM artist;
SELECT 'album rows'  AS label, COUNT(*) FROM album;
SELECT 'track rows'  AS label, COUNT(*) FROM track;
