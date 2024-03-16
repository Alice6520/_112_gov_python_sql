/*進站人數最多的一筆*/  /*要注意若兩邊命名一樣前面要加.*/
SELECT * 
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 進站人數 =(SELECT MAX(進站人數) FROM gate_count);

/*SQL無法分段式紀錄先求A值再求B值所以必須一氣呵成寫完一個公式*/ 


/*統計funtion不能放在WHERE*/
SELECT *
FROM gate_count
WHERE 進站人數 = MAX(進站人數) /*這是錯的*/

SELECT MAX(進站人數) /*這是對的*/
FROM gate_count
