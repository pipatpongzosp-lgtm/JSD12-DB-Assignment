-- Task 1 Bonus: Budget Meal Deal
-- The owner wants to introduce a budget-friendly meal deal promotion and needs to identify
-- which menu items could be included. To qualify, an item must be priced under $10.00,
-- so they can offer good value without cutting too deep into margins.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query to find the name and price of all rows in the MenuItems table
-- where the price is less than 10.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
/*
Key     1.identifywhich menu items
        2.item must be priced under $10.00
Find    ต้องการหารายการอาหาร ที่ราคาต่ำกว่า 10ดอล มาทำโปรโมชั่นโปรโมทร้าน
    step
        1.เลือกข้อมูลการซื้อขายวัตถุดิบจากซัพลาย คือ รายชื่อซัพพลายด์ รายชื่อวัตถุดิบที่ซื้อจากซัพพลายด์ > SELECT Supplier.name,Ingedriant.name,Ingredients.stock_level 
        2.จากนั้นระบุตารางที่เราใช้หาข้อมูล เลือกเป็น Ingedriants เพราะว่า เนื่องจาก เราต้องการหาวัตถุดิบที่ซื้่อจากบริษัท Freshest Farm Produce 
        3.ต้องเลือก อีกตารางมาช่วยดึงข้อมูลเปรียบเทยบข้อมูล โดยเลือก ตาราง Suppliers เพราะต้องการดึงข้อมูลรายชื่อบริษัทจากข้อ2 โดยใช้คำสั่ง join เนื่องจากจะมีการตรวจสอบโดยใช้ supplier id ว่ามีร่วมกันไหม
        4.เมื่อเปรียบข้อมูลเสร็จแล้ว เราจะได้ข้อมูลทั้งหมดมา ดังนั้นเราจะต้องทำการ ตั้ง filter ในการกรองให้เหลือแค่ บริษัท  Freshest Farm Produce
*/