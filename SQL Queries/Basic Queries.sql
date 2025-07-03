/*
Super Heroes Dataset Exploration

Skills used: SELECT, GROUP, ORDER
*/

/*Publisher vs Number of Heroes
- To find out how many many heroes belong to each publisher*/
SELECT Publisher, COUNT(*) AS NumberOfHeroes
FROM heroes_information
GROUP BY Publisher
ORDER BY NumberOfHeroes DESC;


/*Gender vs Number of Heroes
-To see the breakdown of heroes by gender*/
SELECT Gender, COUNT(*) AS NumberOfHeroes
FROM heroes_information
GROUP BY Gender
ORDER BY NumberOfHeroes DESC;


/*Alignment vs Number of Hereos (Good, Bad, Neutral)
-To understand the alignment distribution of heroes (e.g., good, bad, neutral)*/
SELECT Alignment, COUNT(*) AS NumberOfHeroes
FROM heroes_information
GROUP BY Alignment
ORDER BY NumberOfHeroes DESC;
