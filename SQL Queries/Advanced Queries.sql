/*Super Heroes Dataset Exploration
Skills used: SELECT, GROUP, ORDER*/
_______________________________________________________________________________________
/*Average Height and Weight by Gender and Alignment
-This query will give you the average height and weight, broken down by both gender and alignment. 
It also filters out the placeholder '-99.0' values for height and weight.*/
SELECT Gender, Alignment,
       AVG(Height) AS AverageHeight,
       AVG(Weight) AS AverageWeight
FROM heroes_information
WHERE Height != -99.0 AND Weight != -99.0
GROUP BY Gender, Alignment
ORDER BY Gender, Alignment;
_______________________________________________________________________________________
/*Count of Heroes per Publisher and Race
-This query helps you understand the composition of heroes by race within each publisher.*/
SELECT Publisher, Race, COUNT(*) AS NumberOfHeroes
FROM heroes_information
GROUP BY Publisher, Race
ORDER BY Publisher, NumberOfHeroes DESC;
_______________________________________________________________________________________
/*Publishers with Heroes of Multiple Alignments
-This query identifies publishers that have heroes spanning different alignments 
(e.g., both "Good" and "Bad" or "Neutral" heroes).*/
SELECT Publisher, COUNT(DISTINCT Alignment) AS DistinctAlignments
FROM heroes_information
WHERE Alignment IN ('Good', 'Bad', 'Neutral') -- Specify the alignments you are interested in
GROUP BY Publisher
HAVING COUNT(DISTINCT Alignment) > 1 -- Publishers with more than one distinct alignment
ORDER BY DistinctAlignments DESC, Publisher;
_______________________________________________________________________________________
/*Average Hero Weight by Race
-This query is calculating the average weight for each race.*/
USE hero;
SELECT RACE, AVG(Weight)  AS avg_weight
FROM heroes_information hi
GROUP BY Race
ORDER BY avg_weight  DESC;

_______________________________________________________________________________________
/*Character Alignment
-This query provides a quick glance at specific characteristics of the superhero by using the CONCAT function. 
This query generates a string that includes the name, gender, publisher, and alignment of each hero.*/
SELECT CONCAT(name, " is a ", `Gender`," character by ", `Publisher`, " on the ", `Alignment`, " side", ".") 
AS Character_Alignment FROM heroes_information hi
ORDER BY `Alignment`DESC;
_______________________________________________________________________________________
/*CASE Statement - data exploration.
 * Conditional statement when, then, else.
 * To classify the superheroes into three categories based on their eye color: normal, scary, and other.
 * Normal category = If the color of the eye is blue, brown, green, or black.
 * Scary category = If the color of the eye is red, yellow, orange, or purple.
 * Other category = Other eye colors.
 */
SELECT name, Publisher, `Eye color`, 
CASE
WHEN `Eye color` IN('blue','brown','green','black') THEN "Normal"
WHEN `Eye color` IN('red','yellow','orange','purple') THEN "Scary"
ELSE "Other"
END AS eye_color_category
FROM heroes_information;
_______________________________________________________________________________________
/*HAVING Clause - data exploration
 * How to get a list of superheroes who have an 
 * average weight of less than 100 based on their race?
 * This will be an Average (AVG) of weight(aggregated results) filter.
*/
SELECT Race, AVG(Weight) AS avg_weight FROM heroes_information
GROUP BY Race
HAVING avg_weight < 100
ORDER BY avg_weight;
_______________________________________________________________________________________
/* Window (OVER) Function - Data Exploration
 * to get percent of total weight */
SELECT Publisher, Gender, Race, Weight, Height,
Weight*100/SUM(Weight) OVER() AS pct_total_weight FROM heroes_information;
_______________________________________________________________________________________
