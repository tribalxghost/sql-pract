-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;
SELECT id, app_name FROM analytics WHERE last_updated = 2018-08-01;
SELECT id, app_name FROM analytics WHERE last_updated ='2018-08-01'
SELECT category,COUNT(*) FROM analytics GROUP BY category;
SELECT app_name, MAX(reviews) FROM analytics LIMIT 5;

SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
SELECT app_name, MAX(reviews) FROM analytics WHERE rating >= 4.8 GROUP BY app_name;
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;
SELECT app_name,price,rating, MAX(price) FROM analytics WHERE rating < 3 GROUP BY app_name, price,rating LIMIT 1;
SELECT app_name,min_installs,rating FROM analytics WHERE min_installs <= 50 AND rating != 0 ORDER B
Y rating DESC;
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
SELECT app_name, Max(reviews) FROM analytics WHERE price BETWEEN 00.10 AND 1.00 GROUP BY app_name ORDER BY max DESC LIMIT 10;
SELECT app_name, MIN(last_updated) FROM analytics GROUP BY app_name ORDER BY min LIMIT 1;
SELECT app_name,price FROM analytics WHERE price = ( SELECT MAX(price) FROM analytics) LIMIT 1
SELECT COUNT(reviews) FROM analytics;
SELECT category, COUNT(app_name) FROM analytics GROUP BY category HAVING COUNT(app_name) > 300;
SELECT app_name,MAX( min_installs/reviews) FROM analytics WHERE
reviews < 100000 GROUP BY app_name ORDER BY max DESC LIMIT 1;
