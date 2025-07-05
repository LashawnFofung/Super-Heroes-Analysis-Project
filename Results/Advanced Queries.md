#Superhero Analysis Project

<h1>Advanced Queries</h1>

<h1></h1>

<h2>Average Height and Weight by Gender and Alignment</h2>

<b>Question: What is the average height and weight, broken down by both gender and alignment?</b>

This query will give you the average height and weight, broken down by both gender and alignment. It also filters out the placeholder '-99.0' values for height and weight.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/Average%20Height%20and%20Weight%20by%20Gender%20and%20Alignment.png" width="450" height = "4" alt="Average Ht Wt by Gender Alignment">

<h1></h1>

<h2>Count of Heroes per Publisher and Race</h2>

<b>Question: How many heroes does each publisher have for each race?</b>

This query helps you understand the composition of heroes by race within each publisher.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/%20Count%20of%20Heroes%20per%20Publisher%20and%20Race.png" width="450" height = "4" alt="Count of Hereos by Publisher and Hereos">

<h1></h1>

<h2>Publishers with Heroes of Multiple Alignments</h2>

<b>Question:Which publishers have heroes with multiple different alignments?</b>

This query identifies publishers that have heroes spanning different alignments (e.g., both "Good" and "Bad" or "Neutral" heroes).This query counts the distinct alignment types for each publisher and then filters for publishers that have more than one unique alignment. 


<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/Publishers%20with%20Heroes%20of%20Multiple%20Alignments.png" width="550" height = "4" alt="Publishers with Heroes of Multiple Alignments">

<h1></h1>

<h2>Average Hero Weight by Race</h2>

<b>Question:What is the average weight of superheroes for each distinct race, and which races have the highest average weights?</b>

This query is calculating the average weight for each race. It breaks down the overall average weight of all heroes to show how that average varies across different superhero races, and then orders them from heaviest to lightest average.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/Averge%20Hero%20Weight%20by%20Race.png" width="650" height = "4" alt="Average Hero Weight by Race">

<h1></h1>

<h2>Hero Characteristic & Alignment</h2>

<b>Question: What is the name of the gender, publisher, and side(alignment) of each hero</b>

<br>

This query generates a string that includes the name, gender, publisher, and alignment of each hero.

This analysis generates concise, human-readable superhero descriptions by using the `CONCAT` function to combine `Name`, `Gender`, `Publisher`, and `Alignment`. This provides quick, at-a-glance understanding of each hero's affiliations, with results ordered by `Alignment` for easy Browse. Serving as a textual report, it offers detailed individual profiles rather than aggregate statistics.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/Character%20Alignment.png" width="750" height="4" alt="Characteristic Alignment">

<h1></h1>

<h2>SQL CASE Statement: Superhero Eye Color Categorization</h2>

<b>Question:How can individual superheroes be categorized by their eye color into 'Normal,' 'Scary,' or 'Other' groups?</b>

<br>
This section presents a data exploration exercise focused on classifying superheroes based on their eye color. Utilizing SQL's CASE statement, I implemented conditional logic to group various eye colors into distinct, predefined categories. This analysis aims to provide a quick, intuitive understanding of superhero aesthetics beyond just their specific eye color.

<br>

<b>Categorization Logic:</b>

  - <b>"Normal" Category:</b> Includes superheroes with common eye colors such as blue, brown, green, or black.

  - <b>"Scary" Category:</b> Assigned to heroes whose eye color is red, yellow, orange, or purple, often associated with more unusual or intimidating appearances.

  - <b>"Other" Category:</b> Captures all eye colors that do not fall into the "Normal" or "Scary" definitions, highlighting unique or less common attributes.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/CASE%20Statement%20Eye%20Color.png" width="650" height="4" alt="CASE Statement Eye Color">

<h1></h1>

<h2>HAVING Clause: Analysis of Superhero Race Average Weight (Below 100)</h2>

<b>Question: Which superhero races have an average weight of less than 100 units?</b>

<br>

This analysis explores the average physical characteristics of superheroes by focusing on their race and weight. Specifically, it demonstrates the use of the HAVING clause to filter aggregated data, identifying groups based on specific conditions derived from the aggregation itself.

<br>

<b>Analysis Logic:</b>

  - <b>Grouping:</b> The query first calculates the average weight (`AVG(Weight`)) for each distinct `Race` present in the `heroes_information` dataset.

  - <b>Filtering Aggregated Results:</b> The `HAVING` clause then filters these aggregated results, retaining only those races where the calculated `avg_weight` is strictly less than 100. This is crucial for filtering results after `GROUP BY` operations.

  - <b>Ordering:</b> Finally, the results are ordered in ascending order by their `avg_weight`, making it easy to identify the lightest-average races first.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/HAVING%20Clause%20Race%20and%20AVG%20Weight%20.png" width="650" height="4" alt="HAVIG Clause Race and Average Weight">

<h1></h1>

<h2>WINDOW (OVER) FUNCTION: Individual Weight Contribution to Total (Percent of Total) </h2>

<b>Question: What percentage does each individual superhero's weight represent of the total combined weight of all superheroes?</b>

<br>

This analysis explores the relative contribution of each superhero's weight to the overall collective weight of all heroes in the dataset. It demonstrates a powerful application of SQL's window functions, specifically using `SUM() OVER()`, to perform aggregate calculations across the entire dataset while preserving the individual detail for each hero.

<br>

<b>Analysis Logic:</b>

  - <b>Overall Sum Calculation:</b> The `SUM(Weight) OVER()` function calculates the grand total of all Weight values across the entire `heroes_information table`. The `OVER()` clause, without a `PARTITION BY`, signifies that the sum is computed over the entire set of rows.

  - <b>Percentage Calculation:</b> Each hero's individual `Weight` is then divided by this overall sum and multiplied by 100 to determine their specific percentage contribution to the total weight.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/Window%20(Over)%20Function%20Weight%20vs%20Percent%20Total%20Weight.png" width="650" height="4" alt="WINDOW OVER Function Total Percent Weight">

<h1></h1>

<h2>WINDOW (OVER) FUNCTION: Superhero Weight Analysis with Window Functions (Comparative Averages)</h2>

<br>

<b>Questions:</b>

  - <b>1. Question:</b> What is the overall average weight across all superheroes?

  - <b>2. Question:</b> What are the average weights for superheroes grouped by their Publisher, Gender, and Race?
   - <b>3. Question:</b>How does an individual superhero's weight compare to the average weight of heroes from their specific publisher and race?"

<br>

This analysis delves into the weight statistics of superheroes, leveraging SQL's powerful window functions to provide a multi-faceted comparison. Instead of just calculating simple aggregate averages, this query allows for the comparison of individual hero weights against various group averages (e.g., within their publisher, gender, or race) as well as the overall average, all within a single result set.

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/WINDOWS%20OVER%20Function%20Comparison%20of%20Average%20Weight.png" width="650" height="4" alt="WINDOW OVER Function Comparison of Average Weight">

<br>


<b>Key Analysis Points & SQL Concepts:</b>

  - <b>Window Functions (</b>`OVER()`<b>):</b> This query extensively uses the `OVER()` clause, a core feature for analytical queries. Unlike `GROUP BY` (which aggregates rows and reduces the result set), window functions perform calculations over a defined "window" of rows <i>without collapsing them</i>, thus preserving individual row details.

  - <b>Overall Average (</b>`AVG(Weight) OVER()`<b>):</b> Calculates the average weight across the entire dataset. The empty `OVER()` clause defines the window as the entire result set.

  - <b>Partitioned Averages (</b>`AVG(Weight) OVER (PARTITION BY ...)`<b>):</b> Divides the dataset into partitions (e.g., by `Publisher`, `Gender`, or `Race`) and calculates the average weight independently within each of these groups.

  - <b>Individual Deviations and Percentages:</b> By combining individual `Weight` with these calculated window averages, we derive metrics showing how an individual hero's weight stands relative to their group's average (e.g., `Wt_Dv_Pub_Avg for deviation`, `Wt_Pct_of_Race_Avg` for percentage of race average).

  - <b>Data Cleaning (</b>`WHERE` <b>clause):</b> Crucially, the query filters out placeholder values (`-99.0`) and `NULL` values from the `Weight` column to ensure that all average calculations are accurate and based only on valid weight data.
