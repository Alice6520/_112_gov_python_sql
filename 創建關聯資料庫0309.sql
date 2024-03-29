/*關聯性要刪除注意前後順序*/
DROP TABLE IF EXISTS 聯絡人
DROP TABLE IF EXISTS 客戶

CREATE TABLE IF NOT EXISTS 客戶(客戶_id SERIAL,
							  客戶名稱 VARCHAR(255)NOT NULL,
							  PRIMARY KEY(客戶_id));

/*FOREIGN KEY名稱不一定要一模一樣*/
CREATE TABLE IF NOT EXISTS 聯絡人(聯絡人id SERIAL,客戶id INT,
							   聯絡人姓名 VARCHAR(255)NOT NULL,
							   電話 VARCHAR(15),
							  郵件 VARCHAR (100),
							  PRIMARY KEY(聯絡人id),
							  FOREIGN KEY(客戶id)REFERENCES 客戶(客戶_id))
							  ON DELETE SET NULL);
INSERT INTO 客戶(客戶名稱)
VALUES ('遠傳電信'),
       ('台灣大車隊');

INSERT INTO 聯絡人(客戶id,聯絡人姓名,電話,郵件)
VALUES (1,'John Doe','(408)-111-1234','john.doe@bluebird.dev'),
	   (1,'Jane Doe','(408)-111-1235','jane.doe@bluebird.dev'),
	   (2,'David Wright','(408)-222-1234','david.wright@dolphin.dev');

/*預設是不能刪除要刪要再新增delete指令保持資料一致性*/
DELETE FROM 客戶
WHERE 客戶_id=1




/*預設是不能刪除要刪要再新增delete指令*/
/*FOREIGN KEY目的保持資料一致性*/
FOREIGN KEY(哪個欄位名稱)
REFERENCES 哪個表格(哪個欄位名稱)