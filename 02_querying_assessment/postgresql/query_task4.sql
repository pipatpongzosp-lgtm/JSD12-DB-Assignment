-- Task 4: Supplier Dependency Check
-- The manager has just heard that 'Freshest Farm Produce' may be delayed on their next delivery.
-- Before deciding whether to source from an alternative supplier, they need to know exactly
-- which ingredients depend on that supplier, so they can assess the impact on the menu.
--
-- Hint: Write a query to find the names of all ingredients supplied by 'Freshest Farm Produce'.

SELECT Suppliers.name, Ingredients.name, Ingredients.stock_level
FROM Ingredients
JOIN Suppliers ON Ingredients.supplier_id = Suppliers.supplier_id
WHERE Suppliers.name = 'Freshest Farm Produce' ;

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task4_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
/*  key 1.Freshest Farm Produce maybe delayed on their next delivery.
        2.which ingredients depend on that supplier 

    find  ingredients depend on Freshest Farm Produce

    step
        1.เลือกข้อมูลการซื้อขายวัตถุดิบจากซัพลาย คือ รายชื่อซัพพลายด์ รายชื่อวัตถุดิบที่ซื้อจากซัพพลายด์ > SELECT Supplier.name,Ingedriant.name,Ingredients.stock_level 
        2.จากนั้นระบุตารางที่เราใช้หาข้อมูล เลือกเป็น Ingedriants เพราะว่า เนื่องจาก เราต้องการหาวัตถุดิบที่ซื้่อจากบริษัท Freshest Farm Produce 
        3.ต้องเลือก อีกตารางมาช่วยดึงข้อมูลเปรียบเทยบข้อมูล โดยเลือก ตาราง Suppliers เพราะต้องการดึงข้อมูลรายชื่อบริษัทจากข้อ2 โดยใช้คำสั่ง join เนื่องจากจะมีการตรวจสอบโดยใช้ supplier id ว่ามีร่วมกันไหม
        4.เมื่อเปรียบข้อมูลเสร็จแล้ว เราจะได้ข้อมูลทั้งหมดมา ดังนั้นเราจะต้องทำการ ตั้ง filter ในการกรองให้เหลือแค่ บริษัท  Freshest Farm Produce
        
        



*/