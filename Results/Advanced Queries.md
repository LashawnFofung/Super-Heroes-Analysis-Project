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

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/Averge%20Hero%20Weight%20by%20Race.png" width="450" height = "4" alt="Average Hero Weight by Race">

<h1></h1>

<h2>Hero Characteristic & Alignment</h2>

<b>Question: What is the name of the gender, publisher, and side(alignment) of each hero</b>

<br>

This query generates a string that includes the name, gender, publisher, and alignment of each hero.

This analysis generates concise, human-readable superhero descriptions by using the `CONCAT` function to combine `Name`, `Gender`, `Publisher`, and `Alignment`. This provides quick, at-a-glance understanding of each hero's affiliations, with results ordered by `Alignment` for easy Browse. Serving as a textual report, it offers detailed individual profiles rather than aggregate statistics.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/Character%20Alignment.png" width="650" height="4" alt="Characteristic Alignment">

<h1></h1>

<h2>SQL CASE Statement: Superhero Eye Color Categorization</h2>

<b>Question:How can individual superheroes be categorized by their eye color into 'Normal,' 'Scary,' or 'Other' groups?</b>

<br>
This section presents a data exploration exercise focused on classifying superheroes based on their eye color. Utilizing SQL's CASE statement, we've implemented conditional logic to group various eye colors into distinct, predefined categories. This analysis aims to provide a quick, intuitive understanding of superhero aesthetics beyond just their specific eye color.

<br>

<b>Categorization Logic:</b>

  - <b>"Normal" Category:</b> Includes superheroes with common eye colors such as blue, brown, green, or black.

  - <b>"Scary" Category:</b> Assigned to heroes whose eye color is red, yellow, orange, or purple, often associated with more unusual or intimidating appearances.

  - <b>"Other" Category:</b> Captures all eye colors that do not fall into the "Normal" or "Scary" definitions, highlighting unique or less common attributes.

<br>

<img src="https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/Images/CASE%20Statement%20Eye%20Color.png" width="650" height="4" alt="CASE Statement Eye Color">
