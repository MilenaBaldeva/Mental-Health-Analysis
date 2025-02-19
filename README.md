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

3. **Engagement by Post Type (Ba
