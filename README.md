<div align="center">

# 🦸 Superheroes Analysis
### Exploratory SQL analysis of 732 comic book heroes

**SQL · MySQL · Tableau** · Completed July 2025

[![Dashboard](https://img.shields.io/badge/Dashboard-Tableau_Public-E97627?style=flat&logo=tableau&logoColor=white)](https://public.tableau.com/views/SuperheroesAnalysisProject/Dashboard1?%3Alanguage=en-US&publish=yes&%3Asid=&%3Aredirect=auth&%3Adisplay_count=n&%3Aorigin=viz_share_link)
[![Data Portfolio](https://img.shields.io/badge/Data_Portfolio-View-2EA44F?style=flat&logo=github&logoColor=white)](https://github.com/LashawnFofung/Data-Analysis-Portfolio)

[![Superheroes Analysis Dashboard](Images/Superheroes%20Analysis%20Dashboard.png)](https://public.tableau.com/views/SuperheroesAnalysisProject/Dashboard1?%3Alanguage=en-US&publish=yes&%3Asid=&%3Aredirect=auth&%3Adisplay_count=n&%3Aorigin=viz_share_link)

</div>

---

## Contents
[TL;DR](#tldr) · [Dataset](#dataset) · [Key Findings](#key-findings) · [Data Quality](#data-quality) · [SQL Techniques](#sql-techniques) · [Queries & Results](#queries--results) · [Files](#files) · [Data Source](#data-source)

---

## TL;DR

| | |
|---|---|
| **Goal** | Practice exploratory data analysis (EDA) in SQL on a fun dataset, then visualize the results in Tableau |
| **Data** | 732 heroes, 11 attributes: gender, race, publisher, alignment, height, weight, and more |
| **Headline** | Marvel and DC make up **82%** of heroes; heroes are **69% male**; and "good" heroes outnumber "bad" ones about **2.4 to 1** |
| **Data lesson** | About **30%** of heights and weights are missing (stored as −99), so every average had to filter them out first |
| **Skills** | Aggregation, `GROUP BY` / `HAVING`, `CASE`, `CONCAT`, and window functions |

---

## Dataset

`heroes_information.csv` — one row per hero, collected from SuperHeroDb in June 2017.

| Column | Description |
|---|---|
| `name` | Hero name (some heroes appear more than once, for different versions) |
| `Gender` | Male, Female, or "-" (unknown) |
| `Eye color` · `Hair color` · `Skin color` | Physical traits |
| `Race` | Species, such as Human, Mutant, or Kryptonian |
| `Height` | In centimeters; −99 means missing |
| `Weight` | In kilograms; −99 means missing |
| `Publisher` | Marvel Comics, DC Comics, and 22 others |
| `Alignment` | good, bad, neutral, or "-" (unknown) |

---

## Key Findings

### 🏢 Two publishers dominate
| Publisher | Heroes | Share |
|---|---|---|
| **Marvel Comics** | 388 | 53% |
| **DC Comics** | 215 | 29% |
| All 22 others | the rest | 18% |

### 👥 Heroes skew male
| Gender | Heroes |
|---|---|
| **Male** | 505 (69%) |
| **Female** | 200 (27%) |
| Unknown | 29 (4%) |

### ⚖️ Good outnumbers bad
| Alignment | Heroes |
|---|---|
| **Good** | 495 |
| **Bad** | 206 |
| Neutral | 24 |

### 📏 Physical traits *(heroes with recorded values only)*
- **Average height:** 186.7 cm (about 6 ft 1 in)
- **Average weight:** 112.3 kg
- **By gender:** male heroes average **125.6 kg**, female heroes **78.8 kg**
- **By publisher:** Marvel heroes average **117.3 kg**, DC heroes **102.8 kg**
- **Heaviest races:** Zombie, New God, and Eternal, though each is based on only a handful of heroes, so the averages are unstable

*These figures were recalculated from the dataset, excluding −99 placeholders.*

---

## Data Quality

The most useful lesson from this dataset was handling messy data before trusting any average.

| Issue | Scale | How it was handled |
|---|---|---|
| Missing height (−99) | 217 heroes (~30%) | Filtered out of height averages |
| Missing weight (−99) | 237 heroes (~32%) | Filtered out of weight averages |
| Unknown race ("-") | ~300 heroes | Kept for counts; noted as unknown |
| Unknown gender or alignment ("-") | 29 and 7 heroes | Shown as "Unknown" |
| Repeated names | 19 | Different versions of the same hero (e.g., two Batmans), so kept |

**Why it matters:** averaging −99 values as if they were real would drag every average down. For example, male heroes would appear to weigh about 52 kg instead of 126 kg.

---

## SQL Techniques

| Technique | Used for |
|---|---|
| `COUNT`, `AVG`, `GROUP BY`, `ORDER BY` | Hero counts and averages by publisher, gender, alignment, and race |
| `WHERE` filters | Excluding −99 placeholders |
| `HAVING` | Publishers with more than one alignment; races with low average weight |
| `CASE` | Grouping eye colors into "Normal," "Scary," and "Other" |
| `CONCAT` | One-line hero profiles: name, gender, publisher, and alignment |
| Window functions (`OVER`) | Each hero's share of total weight; each hero compared to group averages |

---

## Queries & Results

| Level | Questions answered | SQL | Results |
|---|---|---|---|
| **Basic** | Heroes per publisher · by gender · by alignment · average height and weight | [Basic Queries.sql](SQL%20Queries/Basic%20Queries.sql) | [Basic results](Results/Basic%20Queries.md) |
| **Advanced** | Averages by gender and alignment · race mix by publisher · publishers with mixed alignments · weight by race · eye-color groups · window-function comparisons | [Advanced Queries.sql](SQL%20Queries/Advanced%20Queries.sql) | [Advanced results](Results/Advanced%20Queries.md) |

---

## Files

| Folder | What's inside |
|---|---|
| [`Data/`](Data) | `heroes_information.csv` |
| [`SQL Queries/`](SQL%20Queries) | Basic and advanced SQL scripts |
| [`Results/`](Results) | Each question with its query explanation and output screenshot |
| [`Images/`](Images) | Query outputs and the Tableau dashboard |

**Tools:** MySQL · MySQL Workbench · Tableau Public

---

## Data Source

[Super Heroes Dataset on Kaggle](https://www.kaggle.com/datasets/claudiodavi/superhero-set), compiled from SuperHeroDb in June 2017 and not updated since. This project uses the hero characteristics file only.

<div align="center">

**Lashawn Fofung** · Technical Product Manager · [LinkedIn](https://www.linkedin.com/in/lashawnfofung/) · [Data Portfolio](https://github.com/LashawnFofung/Data-Analysis-Portfolio) · [All Projects](https://github.com/LashawnFofung/LashawnFofung-Portfolio)

</div>
