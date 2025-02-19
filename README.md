# 📊 Mental Health & Social Media Dashboard (2018-2024) 

## 📖 Table of Contents
- [Introduction](#introduction)
- [Dataset Overview](#dataset-overview)
- [Dashboard Overview](#dashboard-overview)
- [Key Insights](#key-insights)
- [How to Use the Dashboard](#how-to-use-the-dashboard)
- [SQL Queries & Data Processing](#sql-queries--data-processing)
- [Future Improvements](#future-improvements)
- [Technical Details](#technical-details)
- [Author](#author)

---

## 📌 Introduction
The **Mental Health & Social Media Dashboard** analyzes engagement trends, sentiment distribution, and regional variations in discussions about mental health on social media platforms from **2018 to 2024**.  

The dashboard helps identify:
- How social media platforms contribute to mental health awareness.
- The impact of different **post types**, **hashtags**, and **topics** on engagement.
- The evolution of **sentiment trends** over time.
- Regional differences in engagement levels.

---

## 📂 Dataset Overview
The dataset consists of social media posts related to mental health across multiple platforms. It includes the following attributes:

- **Post Metadata:** `post_id`, `platform`, `post_type`, `topic`, `hashtag`, `word_count`, `year`, `region`
- **Engagement Metrics:** `likes`, `shares`, `comments`, `engagement_score`
- **Sentiment Analysis:** `positive`, `neutral`, `negative`

All data was **cleaned and processed in Google BigQuery**, ensuring no missing values.

---

## 📊 Dashboard Overview
The **Tableau Dashboard** provides interactive visualizations that highlight key engagement and sentiment trends.  

### 🔹 Charts & Features:
1. **Top Platforms by Engagement (Bar Chart)**  
   - Displays platforms ranked by **average engagement**.

2. **Topic Engagement by Platform Contribution (Stacked Bar Chart)**  
   - Shows **top mental health topics** by **average engagement**.  
   - Color-coded by **platform contribution**.

3. **Engagement by Post Type (Bar Chart)**  
   - Compares **likes, shares, and comments** by **post type**.  
   - Sorted by **average engagement**.

4. **Sentiment Impact on Engagement (Line Chart)**  
   - Tracks **positive, neutral, and negative sentiment** over time.  
   - Compares with **overall average engagement**.

5. **Top 3 Hashtags (Text List)**  
   - Displays **most engaging hashtags**.

6. **Engagement by Region (Interactive Map – Hidden by Default)**  
   - Revealed upon clicking a **Show Map** button.  
   - Displays **average engagement by region**.

7. **Filters (Hidden by Default)**  
   - Toggle filters using the **Show/Hide Filters** button.

---

## 🏆 Key Insights
- 📈 **Engagement is highest on Twitter and Instagram**, while Reddit has the most sentiment diversity.
- 💬 **Post types significantly impact engagement**—some formats perform better across platforms.
- 🌎 **Engagement varies by region**, with **North America and Europe** leading discussions.
- 🔍 **Hashtags such as #MentalHealthAwareness and #SelfCare** consistently drive high engagement.
- 😃 **Positive sentiment has increased post-2022**, suggesting greater support and awareness.

---

## 🎯 How to Use the Dashboard
1. **Select Filters:**  
   - Choose a **year, sentiment, platform, or region** to refine analysis.
   - Click the **Show Filters** button to enable filtering.

2. **Interact with Charts:**  
   - Hover for detailed **tooltips**.
   - Click bars or map regions to **drill down** into specifics.

3. **Show Additional Data:**  
   - Click **Show Map** to view engagement **by region**.

4. **Export Data:**  
   - Download reports in **CSV or PDF format**.

---

## 🛠️ SQL Queries & Data Processing

The dataset was preprocessed using **BigQuery SQL**. Below are key queries used:

### ✅ Checking for Missing Values
```sql
SELECT 
  COUNT(*) AS total_rows,
  SUM(CASE WHEN post_id IS NULL THEN 1 ELSE 0 END) AS post_id_missing,
  SUM(CASE WHEN platform IS NULL THEN 1 ELSE 0 END) AS platform_missing,
  SUM(CASE WHEN topic IS NULL THEN 1 ELSE 0 END) AS topic_missing,
  SUM(CASE WHEN sentiment IS NULL THEN 1 ELSE 0 END) AS sentiment_missing,
  SUM(CASE WHEN region IS NULL THEN 1 ELSE 0 END) AS region_missing,
  SUM(CASE WHEN post_type IS NULL THEN 1 ELSE 0 END) AS post_type_missing,
  SUM(CASE WHEN hashtag IS NULL THEN 1 ELSE 0 END) AS hashtag_missing,
  SUM(CASE WHEN year IS NULL THEN 1 ELSE 0 END) AS year_missing,
  SUM(CASE WHEN engagement_score IS NULL THEN 1 ELSE 0 END) AS engagement_score_missing
FROM `glass-proxy-442917-h9.mydata.mhsm`;
