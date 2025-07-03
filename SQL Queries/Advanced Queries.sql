/* Super Hero Dataset Exploration*/


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
