// Task 4: Total Revenue Summary
// At the end of the trading period, the owner wants a single figure that shows how much revenue
// the truck has generated across all recorded orders. This number will be used in their
// financial summary report, so the result should be returned as a single value named total_revenue.
//
// Hint: Write an aggregation query on the orders collection to calculate the total revenue from all orders combined.
// The result should be a single document with a field named total_revenue.
use("chrome-burger-db")
db.orders.find({})

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task4_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
/* key  1.รถขายอาหาร (Food Truck) ทำรายได้รวมไปทั้งหมดเท่าไหร่จากทุกคำสั่งซื้อที่ถูกบันทึกไว้
        2.ผลลัพธ์ที่ดึงออกมาจะต้องส่งค่ากลับมาเพียงค่าเดียว และต้องตั้งชื่อคอลัมน์นั้นว่า total_revenue
  step  1.เรียกใช้ฐานข้อมูล
        2.ต้องไปเรียกใช้ข้อมูล total price จากเอกสาร Orders
        3.นำข้อมูล total มาคำนวณผลรวม sum 
        4.ตั้งชื่อคอมลัมว่า total_revenue










*/
