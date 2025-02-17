SELECT * FROM `glass-proxy-442917-h9.mydata.mhsm` LIMIT 20

--Cheking for missing values
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
  SUM(CASE WHEN likes IS NULL THEN 1 ELSE 0 END) AS likes_missing,
  SUM(CASE WHEN shares IS NULL THEN 1 ELSE 0 END) AS shares_missing,
  SUM(CASE WHEN comments IS NULL THEN 1 ELSE 0 END) AS comments_missing,
  SUM(CASE WHEN engagement_score IS NULL THEN 1 ELSE 0 END) AS engagement_score_missing,
  SUM(CASE WHEN word_count IS NULL THEN 1 ELSE 0 END) AS word_count_missing
FROM `glass-proxy-442917-h9.mydata.mhsm`; --no missing values found

-- EDA

-- Engagement by Platform and Post Type
SELECT 
  platform, 
  post_type, 
  AVG(likes) AS avg_likes, 
  AVG(shares) AS avg_shares, 
  AVG(comments) AS avg_comments, 
  AVG(engagement_score) AS avg_engagement
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY platform, post_type
ORDER BY avg_engagement DESC;

--Sentiment Trend Over the Years
SELECT 
  year, 
  sentiment, 
  COUNT(*) AS post_count
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY year, sentiment
ORDER BY year, sentiment;

--Top 5 Topics by Year
SELECT 
  year, 
  topic, 
  topic_count
FROM (
  SELECT 
    year, 
    topic, 
    COUNT(*) AS topic_count,
    ROW_NUMBER() OVER (PARTITION BY year ORDER BY COUNT(*) DESC) AS rank
  FROM `glass-proxy-442917-h9.mydata.mhsm`
  GROUP BY year, topic
)
WHERE rank <= 5
ORDER BY year, topic_count DESC;

--Top Performing Platforms by Engagement
SELECT 
  platform, 
  AVG(engagement_score) AS avg_engagement, 
  SUM(likes) AS total_likes, 
  SUM(shares) AS total_shares, 
  SUM(comments) AS total_comments
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY platform
ORDER BY avg_engagement DESC;

--Sentiment Distribution by Topic and Year
SELECT 
  year, 
  topic, 
  sentiment, 
  COUNT(*) AS sentiment_count
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY year, topic, sentiment
ORDER BY year, topic, sentiment_count DESC;

--Engagement by Region and Year
SELECT 
  region, 
  year, 
  AVG(engagement_score) AS avg_engagement
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY region, year
ORDER BY region, year;

—Top Hashtags by Engagement
SELECT 
  hashtag, 
  COUNT(*) AS usage_count, 
  AVG(engagement_score) AS avg_engagement
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY hashtag
HAVING usage_count > 5 -- Filter for popular hashtags
ORDER BY avg_engagement DESC
LIMIT 10;

--Sentiment Impact on Engagement
SELECT 
  sentiment, 
  AVG(engagement_score) AS avg_engagement, 
  AVG(likes) AS avg_likes, 
  AVG(shares) AS avg_shares, 
  AVG(comments) AS avg_comments
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY sentiment
ORDER BY avg_engagement DESC;

--Engagement by post_type
SELECT 
  post_type, 
  AVG(engagement_score) AS avg_engagement, 
  AVG(likes) AS avg_likes, 
  AVG(shares) AS avg_shares, 
  AVG(comments) AS avg_comments
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY post_type
ORDER BY avg_engagement DESC;

--Word Count Impact
SELECT 
  CASE 
    WHEN word_count < 50 THEN 'Short (<50)'
    WHEN word_count BETWEEN 50 AND 100 THEN 'Medium (50-100)'
    ELSE 'Long (>100)' 
  END AS post_length, 
  AVG(engagement_score) AS avg_engagement, 
  COUNT(*) AS post_count
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY post_length
ORDER BY avg_engagement DESC;

-- Avg engagement by region and sentiment
SELECT 
  region, 
  sentiment, 
  AVG(engagement_score) AS avg_engagement
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY 
  region, 
  sentiment
ORDER BY 
  region, 
  avg_engagement DESC;

-- Top sentiment in each region by avg engagement
SELECT 
  region, 
  sentiment, 
  AVG(engagement_score) AS avg_engagement
FROM `glass-proxy-442917-h9.mydata.mhsm`
GROUP BY 
  region, 
  sentiment
QUALIFY 
  ROW_NUMBER() OVER (
    PARTITION BY region 
    ORDER BY avg_engagement DESC
  ) = 1
ORDER BY 
  region;

