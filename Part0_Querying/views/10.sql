SELECT "english_title" AS "Title of Highest Entropy by Hokusai" FROM "views" WHERE "artist" = 'Hokusai' ORDER BY "entropy" DESC LIMIT 1;
