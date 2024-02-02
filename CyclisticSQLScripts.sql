-- preview of data
SELECT *
FROM processed_cyclistic
LIMIT 5;


-- total number of rows 
SELECT COUNT(*) AS number_of_rows
FROM processed_cyclistic;*/
 


-- number of members v causual users
SELECT member_casual, COUNT(*) AS num_of_users
FROM processed_cyclistic
GROUP BY member_casual


-- average ride_length for causual members
SELECT AVG(ride_length) AS avg_ridelength
FROM processed_cyclistic 
WHERE member_casual = 'casual';

-- types of user and there rideable_type
SELECT rideable_type, count(rideable_type) as num_of_users
FROM processed_cyclistic
group by rideable_type;

-- rideable_type counts with filter; member
SELECT rideable_type, count(rideable_type) as num_of_users
FROM processed_cyclistic
WHERE member_casual = 'member' 
group by rideable_type;

-- rideable_type counts with filter; casual
SELECT rideable_type, count(rideable_type) as num_of_users
FROM processed_cyclistic
WHERE member_casual = 'casual'
group by rideable_type;

-- max ridelength 
SELECT MAX(ride_length) max_ridelegnth
FROM processed_cyclistic;
 -- 23 hours and 59 mins

-- mode(most common) day of week
SELECT day_of_week,COUNT(day_of_week) as user_count
FROM processed_cyclistic
Group by day_of_week 
ORDER BY user_count DESC
LIMIT 1; 

-- average ride length for users by day_of_week
SELECT day_of_week, ROUND((AVG(ride_length)/60),0) as avg_ridelength_mins
FROM processed_cyclistic
GROUP BY day_of_week
ORDER BY avg_ridelength_mins DESC;

-- number of rides for users by day_of_week
SELECT day_of_week, COUNT(ride_id) AS num_of_rides
FROM processed_cyclistic pc 
GROUP BY day_of_week 
ORDER BY num_of_rides DESC;

-- average ride_length for members and casual riders
SELECT member_casual, ROUND((AVG(ride_length)/60),0) as avg_ridelength_mins
FROM processed_cyclistic
GROUP BY member_casual
ORDER BY avg_ridelength_mins DESC;

