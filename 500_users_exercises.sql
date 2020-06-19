-- Find the earliest date a user joined. Could also use MIN()
SELECT DATE_FORMAT(created_at, '%M %D %Y') AS earliest_date
FROM users
ORDER BY created_at
LIMIT 1;

-- Find the email of the earliest user. Using subqueries and MIN() here to be different from exercise #1
SELECT *
FROM users
WHERE created_at = (
    SELECT MIN(created_at)
    FROM users
);

-- Users according to the month they joined
SELECT MONTHNAME(created_at) AS month, COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC;

-- Count number of users with Yahoo emails (ends with @yahoo.com)
SELECT COUNT(*) AS yahoo_users
FROM users
WHERE email LIKE '%@yahoo.com';

-- Calculate total number of users for each email host. Could improve using regex
SELECT
    CASE
        WHEN email LIKE '%@gmail.com' THEN 'gmail'
        WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
        WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
        ELSE 'other'
    END AS provider,
    COUNT(*) AS total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC;