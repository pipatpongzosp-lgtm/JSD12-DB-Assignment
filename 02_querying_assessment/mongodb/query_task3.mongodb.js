// Task 3: Stock Replenishment Check
// Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
// that are already well-stocked. They need a list of every ingredient with a stock level
// of 100 or more so those can be deprioritised in this week's order.
//
// Hint: Write a query to find all ingredients in the ingredients collection that have a stock_level of 100.00 or more.

use("chrome-burger-db")
db.ingredients.find({stock_level: {$gte :100}}).sort({stock_level:-1});

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task3_bonus.sql

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
key     1.list of every ingredient with a stock level of 100 or more
        2.order by DESC
        
data          stock_level,ingredientts  
collection   

find    ต้องการทราบยอดวัตถุดิบ เพื่อประเมินว่าต้องซื่้อวัตถุดิบอะไรเพิ่ม และลดการซื้อโดยไม่จำเป็น

step    1. เรียกใช้ฐานข้อมูลล
        2. ค้นหารายการวัตถุดิบพร้อมกับจำนวนวัตถุดิบ ทั้งหมดจาก เอกสาร ingredients
        3. ดึงข้อมูลจาก เอกสารในข้อ2 พร้อมจัดลำดับเพื่อให้ช่วยในการตัดสินใจซื้อวัตถุดิบเพิ่ม





*/