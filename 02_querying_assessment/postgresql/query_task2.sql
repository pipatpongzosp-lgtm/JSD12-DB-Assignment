-- Task 2: Kitchen Staff Contact List
-- The manager has a last-minute change to the kitchen prep schedule and needs to notify
-- all cooks as soon as possible. They need the full names of every staff member
-- whose role is 'Cook' so they can be contacted directly.

SELECT first_name,last_name,con
FROM Staff
WHERE role = 'Cook';
-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task2_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:

-- key manager want to know fullname every staff , condition role cook

-- data collect staff table,first_name ,last_name

-- define อยากรู้ชื่อพนักงานเพื่อติดต่อเรื่องการวางแผนงานใหม่

-- step 1 I want data fullname like first+lastname of staff 
-- setp 2 I select the first+last name data form staff table
-- step 3 I want to filter whole is role cook 










































-- Hint: Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.