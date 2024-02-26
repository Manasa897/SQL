
-- find the member by name and mobile_number
SELECT *
FROM library_member
WHERE first_name = 'Manasa' 
    AND last_name = 'Mallela' 
    AND phone_number = 4697020642;
    
    -- display all the members
    
    select * from library_member;
    
    SELECT b.title, b.author_name, b.year_published
FROM library_member m
JOIN checkout c ON m.member_id = c.member_id
JOIN book_isbn bi ON c.isbn = bi.isbn
JOIN book b ON bi.book_id = b.book_id
WHERE m.first_name = 'Manasa' 
    AND m.last_name = 'Mallela';
    
  
    select * from checkout;
    select * from book_isbn;
    insert into checkout values(711,9002985256726,401,now()-15,now()-2,0);


select * from book;



 select isbn from book_isbn where book_id=5;
 
 insert into checkout values(710,9315260938662,401,DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY),DATE_ADD(CURRENT_DATE(), INTERVAL 15 DAY),0);
SELECT 
    b.book_id,
    b.title,
    b.author_name,
    b.year_published,
    b.quantity - COALESCE(SUM(CASE WHEN c.is_returned = FALSE THEN 1 ELSE 0 END), 0) AS available_quantity
FROM 
    book b
LEFT JOIN 
    book_isbn bi ON b.book_id = bi.book_id
LEFT JOIN 
    checkout c ON bi.isbn = c.isbn
GROUP BY 
    b.book_id, b.title, b.author_name, b.year_published, b.quantity;
    
select * from checkout;
-- list all the checkouts that are due in fifteen days
SELECT *
FROM checkout
WHERE DATEDIFF(due_date, CURRENT_DATE()) =15;

--  list all the checkouts that are over due 

SELECT *
FROM checkout
WHERE due_date < CURRENT_DATE();


SELECT DISTINCT b.*
FROM book b
JOIN book_isbn bi ON b.book_id = bi.book_id
JOIN checkout c ON bi.isbn = c.isbn
WHERE c.checkout_date = CURRENT_DATE();

SELECT bi.isbn, b.title, b.author_name, b.year_published, b.quantity,
       CASE WHEN c.is_returned = FALSE THEN 'Checked Out' ELSE 'Available' END AS checkout_status
FROM book b
JOIN book_isbn bi ON b.book_id = bi.book_id
LEFT JOIN checkout c ON bi.isbn = c.isbn;