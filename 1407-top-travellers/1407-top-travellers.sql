# Write your MySQL query statement below
SELECT name,ifnull(Sum(Rides.distance),0) as travelled_distance 
FROM Users
LEFT JOIN Rides on Users.id = Rides.user_id 
GROUP BY Rides.user_id 
ORDER BY travelled_distance DESC, name ASC;