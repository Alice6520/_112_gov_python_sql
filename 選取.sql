DROP TABLE student;
/*字串要用單引號*/
CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT
);

INSERT INTO student VALUES(1, '小白','英語',50);
INSERT INTO student VALUES(2, '小黃','生物',90);
INSERT INTO student VALUES(3, '小綠','歷史',70);
INSERT INTO student VALUES(4, '小藍','英語',80);
INSERT INTO student VALUES(5, '小黑','化學',20);

SELECT *
FROM student

/*多欄位*/
SELECT name,major
FROM student

/*將欄位命名*/
SELECT name AS 姓名,major AS 主修
FROM student

/*ORDER BY等於自訂規則 ASC等於由小到大 DESC等於由大到小*/
SELECT *
FROM student
ORDER BY score ASC

SELECT *
FROM student
ORDER BY score DESC

/*LIMIT 限制多少數量*/
SELECT *
FROM student
ORDER BY score DESC
LIMIT 3;

SELECT *
FROM student
ORDER BY score DESC
LIMIT 2;

/*WHERE 比較運算式*/
SELECT *
FROM student
WHERE major='英語'
ORDER BY score DESC
LIMIT 1;

SELECT *
FROM student
WHERE major='英語' AND score < 60

SELECT *
FROM student
WHERE major='英語' or score > 60

SELECT *
FROM student
WHERE major='英語' or major='生物' or major='歷史'
/*替代寫法 major IN ('英語','生物','歷史')*/

SELECT *
FROM student
WHERE score >=80 AND score <=100
/*替代寫法 score BETWEEN 80 AND 100*/

SELECT *
FROM student
WHERE name='小黃' 

/*不是用NOT*/
SELECT *
FROM student
WHERE NOT name='小黃'

/*只要找某個字元時,運算不能用=用LIKE*/
/*字串用%表示不限制*/
SELECT *
FROM student
WHERE name LIKE '小%'

/*找字元在中間*/
SELECT *
FROM student
WHERE name LIKE '%黃%'
