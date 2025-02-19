# 📊 Mental Health & Social Media Dashboard (2018-2024)

## 📖 Table of Contents
- [Introduction](#introduction)
- [Dataset Overview](#dataset-overview)
- [Dashboard Overview](#dashboard-overview)
- [Key Insights](#key-insights)
- [How to Use the Dashboard](#how-to-use-the-dashboard)
- [Technical Details](#technical-details)
- [Future Improvements](#future-improvements)

---

## 📌 Introduction
This **Mental Health & Social Media Dashboard** provides a data-driven analysis of engagement metrics, sentiment trends, and regional differences in discussions related to mental health on social media platforms from **2018 to 2024**. The goal is to identify how online interactions and sentiment have evolved over time and to help stakeholders better understand mental health trends in the digital space.

---

## 📂 Dataset Overview
The dataset includes:
- **Time Range:** 2018-2024
- **Metrics:**
  - Engagement (likes, shares, comments)
  - Sentiment analysis (positive, neutral, negative)
  - Regional distribution (by country/continent)
  - Platform insights (Twitter, Facebook, Reddit, Instagram)
  - Hashtags and keyword frequency
  - Mental health topics (e.g., anxiety, depression, stress, therapy)

The dataset was loaded into **Google BigQuery Sandbox**, where SQL queries were used to preprocess and extract insights.

---

## 🏆 Dashboard Overview
The **Tableau Dashboard** consists of multiple interactive visualizations:

1. **Engagement Trends Over Time**  
   - Displays overall engagement (likes, shares, comments) across different years.
   - Includes a **year filter** to analyze specific periods.

2. **Sentiment Analysis Breakdown**  
   - Shows the proportion of positive, neutral, and negative sentiment per year.
   - Allows filtering by platform to observe sentiment variation.

3. **Top Mental Health Topics**  
   - Highlights the most frequently discussed mental health topics.
   - Includes a **search filter** to focus on specific terms.

4. **Regional Analysis**  
   - Interactive **map visualization** showing engagement levels per country.
   - Displays **top 5 most engaged regions**.

5. **Platform-Specific Performance**  
   - Breakdown of engagement per social media platform.
   - Helps identify where discussions are most active.

---

## 📊 Key Insights
- 📈 **Mental health discussions have significantly increased** since 2020, peaking in 2021 due to the pandemic.
- 💬 **Negative sentiment decreased from 2022 onward**, suggesting growing awareness and supportive conversations.
- 🌎 **North America and Europe** dominate engagement, but **Asia has shown rising trends** in recent years.
- 🔍 **Instagram and Twitter drive the most engagement**, but Reddit has the highest sentiment diversity.
- 🏷️ **Popular hashtags include #MentalHealthAwareness, #SelfCare, and #EndTheStigma.**

---

## 🎯 How to Use the Dashboard
1. **Adjust Filters:**  
   - Use the **year filter** to focus on specific timeframes.
   - Select a **platform** to compare social media trends.
   - Choose a **sentiment type** to analyze specific patterns.

2. **Hover for Details:**  
   - Charts and maps provide tooltips with deeper insights.

3. **Click for Drill-Downs:**  
   - Clicking on a country in the **map** reveals engagement trends by year.
   - Selecting a sentiment type updates all related charts.

4. **Export & Share:**  
   - Download insights in PDF or CSV format for further analysis.

---

## ⚙️ Technical Details
- **Data Source:** Google BigQuery (SQL processing)
- **Visualization Tool:** Tableau
- **Data Cleaning:** SQL queries (duplicates removed, sentiment normalized)
- **Interactivity:** Filters, drill-downs, tooltips, map-based selections

---

## 🚀 Future Improvements
- 🔹 **Live Data Updates:** Integrate API connections for real-time insights.
- 🔹 **Deeper NLP Analysis:** Use AI models to classify mental health discussions in more detail.
- 🔹 **Comparative Analysis:** Compare social media discussions with real-world mental health reports.

---

📢 **Developed by:** Milena Baldeva  
📅 **Last Updated:** February 2025  
🔗 **Dashboard Link:** _[Insert Tableau Public link if available]_

