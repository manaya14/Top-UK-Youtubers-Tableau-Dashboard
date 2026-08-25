<img width="1672" height="941" alt="image" src="https://github.com/user-attachments/assets/45fdcfba-54b1-4bdc-95c0-01923f6b7f3f" />

# Objective
- What is the key pain point?
The Head of Marketing wants to find out who the top YouTubers are in 2024 to decide on which YouTubers would be best to run marketing campaigns throughout the rest of the year.

- What is the ideal solution?
To create a dashboard that provides insights into the top UK YouTubers in 2024 that includes their

-subscriber count
-total views
-total videos, and
-engagement metrics
-This will help the marketing team make informed decisions about which YouTubers to collaborate with for their marketing campaigns.

# User story
As the Head of Marketing, I want to use a dashboard that analyses YouTube channel data in the UK .

This dashboard should allow me to identify the top performing channels based on metrics like subscriber base and average views.

With this information, I can make more informed decisions about which Youtubers are right to collaborate with, and therefore maximize how effective each marketing campaign is.

# Data source
What data is needed to achieve our objective?
We need data on the top UK YouTubers that includes their

- channel names

- total subscribers

- total views

- total videos uploaded

Where is the data coming from? The data is sourced from Kaggle 

# Stages
- Design
- Developement
- Testing
- Analysis

# Design
# Dashboard components required
- what should the dashboard contain based on the requirements provided?
  
To understand what it should contain, we need to figure out what questions we need the dashboard to answer:

1.Who are the top 10 YouTubers with the most subscribers?
2.Which 3 channels have uploaded the most videos?
3.Which 3 channels have the most views?
4.Which 3 channels have the highest average views per video?
5.Which 3 channels have the highest views per subscriber ratio?
6.Which 3 channels have the highest subscriber engagement rate per video uploaded?
For now, these are some of the questions we need to answer, this may change as we progress down our analysis.

# Dashboard mockup
- What should it look like?
Some of the data visuals that may be appropriate in answering our questions include:

1.Table
2.Treemap
3.Scorecards
4.Horizontal bar chart

<img width="740" height="527" alt="tableau_dashboard" src="https://github.com/user-attachments/assets/55535104-ede1-4aab-9c11-0c28d4c49a41" />


## Tools

| Tool | Purpose |
|---|---|
| Python | Data processing and analysis |
| Pandas | Data cleaning and manipulation |
| Matplotlib | Data visualization |
| Seaborn | Exploratory Data Analysis (EDA) |
| SQLite | SQL querying and data analysis |
| Tableau Public | Interactive dashboard creation |
| GitHub | Project documentation and version control |

# Development
# Pseudocode
- What's the general approach in creating this solution from start to finish?
1.Get the data
2.Explore & clean the data python
3.Load the data into SQL Server
4.Clean the data with SQL
5.Test the data with SQL
6. EDA & Visualization in python
7. Tableau dashboard
8.Generate the findings based on the insights
9.Write the documentation + commentary
10.Publish the data to GitHub Pages
  
# Data exploration notes
This is the stage where you have a scan of what's in the data, errors, inconcsistencies, bugs, weird and corrupted characters etc

- What are your initial observations with this dataset? What's caught your attention so far?

 1. The dataset contains YouTube channel information such as subscribers, video views, uploads, category, and country.
2.The dataset contains channels from multiple countries, so it needs to be filtered for UK channels.
3.Some columns contain missing values and require cleaning.
4.Several columns are not required for the final analysis and can be removed.
5.The data needs to be cleaned and standardized before SQL analysis and Tableau visualization.

# Data cleaning
- What do we expect the clean data to look like? (What should it contain? What contraints should we apply to it?)

The aim is to refine our dataset to ensure it is structured and ready for analysis.

The cleaned data should meet the following criteria and constraints:

- Only relevant columns should be retained.
- All data types should be appropriate for the contents of each column.
- No column should contain null values, indicating complete data for all records.

Below is a table outlining the constraints on our cleaned dataset:
| Property | Value |
|---|---:|
| Rows | 43 |
| Columns | 31 |
| Country | United Kingdom |

And here is a tabular representation of the expected schema for the clean data:

| Column | Description |
|---|---|
| Youtuber | YouTube channel name |
| subscribers | Total subscribers |
| video views | Total video views |
| uploads | Number of uploaded videos |
| category | YouTube channel category |
| channel_type | Type of channel |
| avg_views_per_subscriber | Average views per subscriber |
| avg_views_per_video | Average views per video |
| engagement_rate | Channel engagement rate |

- What steps are needed to clean and shape the data into the desired format?

1.Remove unnecessary columns by only selecting the ones you need
2.Extract Youtube channel names from the first column
3.Rename columns using aliase

# Testing
- What data quality and validation checks are you going to create?
Here are the data quality tests conducted:

# Row count check
 <img width="881" height="111" alt="row count check" src="https://github.com/user-attachments/assets/0d9ab9ad-9ad9-4abc-aa75-b75f8a0b6edb" />

# Column count check
<img width="881" height="135" alt="column count check" src="https://github.com/user-attachments/assets/50598cf3-0b3a-4de2-be12-f40d59399486" />

# Data type check
<img width="1108" height="339" alt="data type check" src="https://github.com/user-attachments/assets/b35f6a5c-2a76-4cbd-88b8-3dd7901e1908" />

# Duplicate count check
<img width="682" height="323" alt="duplicate count check" src="https://github.com/user-attachments/assets/e8159448-0270-47b5-876d-92af94d2aa18" />

# Visualization
# Results

- What does the dashboard look like
  <img width="660" height="587" alt="top uk youtubers tableau dashboard" src="https://github.com/user-attachments/assets/4ffb524c-627b-4c20-87b8-ee722fcf85b6" />

  # Analysis
  
  # Findings
- What did we find?
  
For this analysis, we're going to focus on the questions below to get the information we need for our marketing client -

Here are the key questions we need to answer for our marketing client:

Who are the top 10 YouTubers with the most subscribers?
Which 3 channels have uploaded the most videos?
Which 3 channels have the most views?
Which 3 channels have the highest average views per video?
Which 3 channels have the highest views per subscriber ratio?
Which 3 channels have the highest subscriber engagement rate per video uploaded?

# 1. Who are the top 10 YouTubers with the most subscribers?

| Rank | YouTuber | Subscribers (M) |
|------|----------|----------------:|
| 1 | 5-Minute Crafts | 80.10 |
| 2 | Ed Sheeran | 53.50 |
| 3 | NoCopyrightSounds | 33.40 |
| 4 | Mr Bean | 32.10 |
| 5 | Peppa Pig - Official Channel | 31.40 |
| 6 | Adele | 30.20 |
| 7 | DanTDM | 27.40 |
| 8 | Coldplay | 25.30 |
| 9 | Dan Rhodes | 24.80 |
| 10 | KSI | 24.10 |

# 2. Which 3 channels have the most videos?

| Rank | YouTuber | Video Views (B) |
|------|----------|----------------:|
| 1 | Ed Sheeran | 30.37 |
| 2 | 5-Minute Crafts | 26.24 |
| 3 | Peppa Pig - Official Channel | 22.92 |

# 3.Which 3 channels have uploaded the most videos?

| Rank | YouTuber | Videos Uploaded |
|------|----------|----------------:|
| 1 | BBC News | 19,000 |
| 2 | BBC | 16,000 |
| 3 | Jelly | 6,000 |

# 4. Which 3 channels have the highest average views per video?

| Rank | YouTuber | Average Views per Video (B) |
|------|----------|----------------------------:|
| 1 | 5-Minute Crafts | 26.24 |
| 2 | Adele | 0.95 |
| 3 | JULIA GISELLA | 0.28 |

# 5. Which 3 channels have the highest views per subscriber ratio?

| Rank | YouTuber | Views per Subscriber |
|------|----------|---------------------:|
| 1 | DisneyChannelUK | 1016.73 |
| 2 | Woody & Kleiny | 867.94 |
| 3 | Calvin Harris | 842.84 |

# 6. Which 3 channels have the highest subscriber engagement rate per video uploaded?

| Rank | YouTuber | Engagement Rate |
|------|----------|----------------:|
| 1 | 5-Minute Crafts | 327.55 |
| 2 | Adele | 31.34 |
| 3 | JULIA GISELLA | 20.98 |

# Notes
For this analysis, we'll prioritize analysing the metrics that are important in generating the expected ROI for our marketing client, which are the YouTube channels wuth the most

- subscribers
- total views
- videos uploaded










