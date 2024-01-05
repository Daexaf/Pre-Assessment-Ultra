-- CREATE TABLE child(
-- id INT PRIMARY KEY,
-- name VARCHAR(255) NOT NULL,
-- parent_id INT
-- );

-- INSERT INTO child(id, name, parent_id) VALUES(
-- 	1, 'Zaki', 2),
-- 	(2, 'Ilham', NULL),
-- 	(3, 'Irwan', 2),
-- 	(4, 'Arka', 3);

SELECT id,name,(select name from child where id = child.parent_id) AS parent_name from child

-- SELECT * FROM child;

