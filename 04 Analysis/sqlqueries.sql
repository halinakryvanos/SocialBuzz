--To import data from csv file to Postgresql
CREATE TABLE content (content_id VARCHAR ( 50 ) ,
	user_id VARCHAR ( 50 ),type VARCHAR ( 50 ),
	category VARCHAR ( 50 ),url VARCHAR ( 255 ))
	
CREATE TABLE reactions (content_id VARCHAR ( 50 ) ,
	user_id VARCHAR ( 50 ),type VARCHAR ( 50 ),
	date_time TIMESTAMP)
	
CREATE TABLE reactionTypes ( 
 type VARCHAR ( 50 ),sentiment VARCHAR ( 50 ), score int )
 
 SELECT * FROM reactions --25553 number of records after cleanup
 SELECT * FROM content -- 1000
 SELECT *  FROM reactiontypes –16


-- Rename column type to content_type 
ALTER TABLE content RENAME type to content_type

-- Since we dont need url column for our analysis  
ALTER TABLE content DROP url;

--Some values in category are with " " to replace category with plain category 
SELECT regexp_replace(category,'[^a-zA-Z0-9]','') FROM content

-- Delete the selected rows
DELETE FROM content
WHERE content_id IS NULL AND content_type IS NULL
AND content_type IS NULL AND category IS NULL;


-- Create a mapping of category names to lowercase equivalents
WITH category_mapping AS (
    SELECT
        'Veganism' AS original_category,
        'veganism' AS normalized_category
    UNION ALL
    SELECT
        'Education',
        'education'
    UNION ALL
    SELECT
        'Animals',
        'animals'
    UNION ALL
    SELECT
        'Healthy Eating',
        'healthy eating'
    UNION ALL
    SELECT
        'Soccer',
        'soccer'
    UNION ALL
    SELECT
        'Public Speaking',
        'public speaking'
    UNION ALL
    SELECT
        'Technology',
        'technology'
    UNION ALL
    SELECT
        'Fitness',
        'fitness'
    UNION ALL
    SELECT
        'Travel',
        'travel'
    UNION ALL
    SELECT
        'Science',
        'science'
    UNION ALL
    SELECT
        'Food',
        'food'
    UNION ALL
    SELECT
        'Studying',
        'studying'
    -- Add more category mappings here as needed
)
-- Update the content table using the mapping
UPDATE content c
SET category = cm.normalized_category
FROM category_mapping cm
WHERE LOWER(c.category) = LOWER(cm.original_category);

-- To make sure category has 16 categories
SELECT distinct category FROM content

--Rename column type to reaction_type
ALTER TABLE reactions RENAME type to reaction_type

-- Some values in reactions table are null to delete rows where type =null
DELETE FROM reactions WHERE reaction_type is NULL


-- Check NULL
SELECT * FROM reactions
WHERE content_id IS NULL AND reaction_type IS NULL

-- Rename column type to reaction_type
ALTER TABLE reactiontypes RENAME type to reaction_type
--Create new finish data set
CREATE TABLE finish_data_set AS
SELECT 
    c.content_id, 
    c.content_type, 
    c.category,
    r.reaction_type,
    rt.sentiment,
    rt.score,
    r.date_time
FROM content AS c
JOIN reactions AS r ON c.content_id = r.content_id
JOIN reactiontypes AS rt ON r.reaction_type = rt.reaction_type;

-- SQL query to find out Top 5 performimg categories 
SELECT ranked.category, total_score FROM (
SELECT total_score, category, rank() over(order by total_score desc) as rnk 
FROM (select sum(score) as total_score, lower(category) AS category 
		FROM reactions react
		JOIN reactiontypes retype ON react.reaction_type = retype.reaction_type 
		LEFT JOIN content cnt ON react.content_id = cnt.content_id
		GROUP BY category) AGG
) ranked	
