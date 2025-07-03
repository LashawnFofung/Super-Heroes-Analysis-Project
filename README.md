
<h1>Super Hereos Analysis Project</h1>
<h1></h1>

<h2>Table of Contents</h2>
  
   - [<b>Overview</b>](https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/README.md#overview)
   - [<b>Dataset</b>](https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/README.md#dataset)
   - [<b>Tech Stack</b>](https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/README.md#tech-stack)
   - [<b>About SQL</b>](https://github.com/LashawnFofung/Super-Heroes-Analysis-Project/blob/main/README.md#about-sql)



<h1></h1>


<h2>Overview</h2>

<h1></h1>

<h2>Dataset</h2>

This project utilizes the `heroes_information.csv` dataset, which contains detailed information about various comic book heroes. Each row in the dataset represents a unique hero, and the columns provide different attributes about them.

Key features and columns of the dataset include:

  -  `name`: The name of the hero.
  
  -  `Gender`: The gender of the hero.
  
  -  `Eye color`: The eye color of the hero.
  
  -  `Race`: The race or species of the hero.
  
  -  `Hair color`: The hair color of the hero.
  
  -  `Height`: The height of the hero (note: '-99.0' typically indicates missing or unknown values).
  
  -  `Publisher`: The comic book publisher associated with the hero (e.g., Marvel Comics, DC Comics).
  
  -  `Skin color`: The skin color of the hero.
  
  -  `Alignment`: The moral alignment of the hero (e.g., 'Good', 'Bad', 'Neutral').
  
  -  `Weight`: The weight of the hero (note: '-99.0' typically indicates missing or unknown values).

This dataset is ideal for performing various analytical tasks related to character demographics, publisher distribution, and other attributes within the superhero universe.


<h1></h1>


<h2>Task Perfomed</h2>

This project involved performing comprehensive exploratory data analysis (EDA) on the `heroes_information.csv` dataset using SQL. The primary objective was to gain insights into various characteristics of the comic book heroes, their publishers, and their attributes.

Key analytical tasks performed include:

  - <b>Demographic Analysis:</b> Investigating the distribution of heroes across different publishers, genders, and alignments (Good, Bad, Neutral).

  - <b>Physical Attribute Analysis:</b> Calculating the average height and weight of heroes, with careful handling of missing data represented by '-99.0'.

  - <b>Grouped Physical Attributes:</b> Determining the average height and weight broken down by both gender and alignment to understand trends within specific hero categories.

  - <b>Publisher and Race Composition:</b> Analyzing the composition of heroes by race for each publisher to understand character diversity within different comic universes.

  - <b>Alignment Diversity per Publisher:</b> Identifying and querying publishers that feature heroes spanning multiple distinct alignments, highlighting publishers with diverse character moral landscapes.

All analyses were conducted using standard SQL queries, leveraging clauses such as `SELECT`, `FROM`, `WHERE`, `GROUP BY`, `ORDER BY`, `COUNT`, `AVG`, `DISTINCT`, and `HAVING` to extract meaningful patterns and statistics from the dataset.


<h1></h1>

<h2>Tech Stack</h2>
 
  - <b>MySQL</b>
    - This is an open-source relational database management system (RDBMS). It's widely used for web applications and is known for its speed, reliability, and ease of use. It stores data in tables with rows and columns.
  - <b>MySQL Workbench</b>
    - This is a visual database design tool that integrates SQL development, administration, database design, creation, and maintenance for the MySQL database system. It provides a graphical interface for users to interact with their MySQL databases.

<h1></h1>

<h2>About SQL</h2>

SQL is a standard programming language used to manage relational databases and perform various operations on the data within them. Key capabilities of SQL include:

  - <b>Querying Data:</b> Retrieving specific information from a database.

  - <b>Data Manipulation:</b> Inserting new data, updating existing data, and deleting data.

  - <b>Data Definition:</b> Creating, modifying, and deleting database schemas (tables, indexes, views, etc.).

  - <b>Data Control:</b> Managing database access permissions.

<h1></h1>



