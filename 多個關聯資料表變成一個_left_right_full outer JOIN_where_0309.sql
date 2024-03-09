CREATE TABLE basket_a(
	a INT PRIMARY KEY,
	fruit_a VARCHAR(100) NOT NULL
);

CREATE TABLE basket_b(
	b INT PRIMARY KEY,
	fruit_b VARCHAR(100) NOT NULL
);

INSERT INTO basket_a (a, fruit_a)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');

INSERT INTO basket_b (b, fruit_b)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');

SELECT * FROM basket_a;
SELECT * FROM basket_b;


/*left join 左邊納入*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b
 /*left join 左邊納入*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b
WHERE b IS NULL /*排除b有的*/

/*right join 右邊納入*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b
/*right join 右邊納入*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b
WHERE a IS NULL /*排除a有的*/

/*full outer join 左右全納入*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b
/*full outer join 左右全納入*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b
WHERE a IS NULL b IS NULL /*排除a或b都有的*/