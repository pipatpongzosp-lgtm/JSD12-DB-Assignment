-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.

--สร้างตางรางนับออเดอร์
WITH totalorder AS 
(SELECT staff_id,COUNT(order_id) AS total_count
FROM Orders
GROUP BY staff_id
)
--ดึงข้อมูลมาเปรี่ยบเทียบ
SELECT  Staff.staff_id, 
        totalorder.total_count, 
        Staff.first_name, 
        Staff.last_name
FROM totalorder 
JOIN Staff ON totalorder.staff_id = Staff.staff_id
ORDER BY total_count DESC ;


-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
/* key:
        1.hardest-working cashiers
        2.how many orders each staff member has processed, 
    Define  he want to know whole cashier is top find most total order
    step    1 เลือกคอลัมที่เราต้องการดึงข้อมูล Select first_name,last_name,staff id,order id  form Staff and Oders
            2 เราจะสร้างตารางที่นับจำนวนออเดอร์ เพื่อช่วยในการเปรี่ยบเทียบว่าใครมีออเดอร์มากกว่ากัน > use WITH 
            3 เราจะดึงข้อมูลจากตารางนับออเดอร์ มารวมกับข้อมูลตารางข้อที่1 
            4 จัดเรียงข้อมูลลำดับ โดยให้คนที่มีออเดรอ์มากที่สุดอยู่อันดับ 1
*/



























-- Hint: Write a query to find the total number of orders processed by each staff member.