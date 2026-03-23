// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.

// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.

use("chrome-burger-db")
db.orders.find(
    {'staff.staff_id' : ObjectId('634d00000000000000000011')},
{order_date : 1, total_price : 1, _id:0}

);


    
// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
// 
// Your thinking:
/* 
key     1.look oreder history of Jane Doe
        2.The order detail only show with date and value

data            staff_id, orders
collection

fine    Jane Doe จะมีประเมินผลงาน โดยการดู ข้อมูลออเดอร์ ex. วันที่บิล และ มูลค่าในบิลแต่ละใบที่เธอได้รับผิดชอบ

step    1.call the database > use("chrome-burger-db")
        2.find staff member "Jane Doe" in Orders > โดยใช้ไอดีมาค้นหา เนื่องจากหาชื่อตอนแรกแล้วไม่เจอและหากเกิดการชื่อซ้ำจะกลายเป็นปัญหา
        3.find the date and value that she done แล้วดึงข้อมูลให้โชว์
        
*/