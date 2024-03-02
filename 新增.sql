/*Field constraints*/
/*
PRIMARY KEY
NOT NULL (不能有空值)
UNIQUE (不可以重複)
DEFAULT (新增值時,可以不設)
*/

DROP TABLE student;
CREATE TABLE student(student_id SERIAL PRIMARY KEY,name VARCHAR(20) NOT NULL,
					 major VARCHAR(20)UNIQUE);

select *
FROM student

INSERT INTO student VALUES (1,'小白','英語')
RETURNING *

/*3個欄位都要有值才可以出現*/
INSERT INTO student VALUES ('小黑','歷史')

/*指定欄位要有值*/
INSERT INTO student(name,major) VALUES ('小黑','數學')
RETURNING *

/*錯誤的NOT NULL*/
INSERT INTO student(name,major) VALUES (NULL,'數學')
RETURNING *

/*新增多筆*/
INSERT INTO student(name,major) 
VALUES ('小白','國文'),('小藍','英文')
RETURNING *

