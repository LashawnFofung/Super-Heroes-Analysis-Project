/*
Super Heroes Dataset Exploration

Skills used: SELECT, GROUP, ORDER
*/

/*Publisher v Number of Heroes*/
/*To find out how many many heroes belong to each publisher*/
SELECT Publisher, COUNT(*) AS NumberOfHeroes
FROM heroes_information
GROUP BY Publisher
ORDER BY NumberOfHeroes DESC;
