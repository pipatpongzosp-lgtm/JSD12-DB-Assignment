// Task 1: Budget Meal Deal
// The owner wants to introduce a budget-friendly meal deal promotion and needs to identify
// which menu items could be included. To qualify, an item must be priced under $10.00,
// so they can offer good value without cutting too deep into margins.
use("chrome-burger-db")
db.menu_items.find({});
db.menu_items.find({price:{$lt:10}}).sort({price:-1});

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task1_bonus.sql

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
key     1.identifywhich menu items
        2.item must be priced under $10.00
Find    ต้องการหารายการอาหาร ที่ราคาต่ำกว่า 10ดอล มาทำโปรโมชั่นโปรโมทร้าน

step    1.เรียกใช้ฐานข้อมูล > use("chrome-burger-db");
        2.ใช้คำสั่ง find หารายการอาหารทั้งหมดจากตาราง MenuItems > db.MenuItems.find() เพื่อตรวจสอบรายการอาหาร
        3.ใช้คำสั่ง find filter รายการอาหาร MenuItemsdb.menu_items.find({price:{$lt:10}});
            เงื่อนไข คัดกรองรายการอาหารที่ราคาต่ำกว่า10ดอล  > ใช้ price : {$lt: 10}
       

*/







// Hint: Write a query to find all menu items in the menu_items collection that have a price less than 10.00.