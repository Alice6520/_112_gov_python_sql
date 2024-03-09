SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號=編號;

SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號;

/*取出名稱有基隆的資料*/
SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 名稱 = '基隆'

/*納出名稱的資料*/
SELECT DISTINCT 名稱
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 地址 LIKE '高雄市%'; /*高雄市有哪些火車站*/ /*取字元用like*/

/*取出基隆火車站2022年3月1日的資料*/
SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 名稱 = '基隆' and 日期='20220301';

/*取出基隆火車站2022年3月的資料,時間由小排到大*/
SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 名稱 = '基隆' AND 日期 BETWEEN '20220301' AND  '20220331'
ORDER BY 日期 ASC 

/*取出台北和基隆火車站2022年3月的資料,時間由小排到大*/
SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 名稱 IN('基隆','台北') AND 日期 BETWEEN '20220301' AND  '20220331'
ORDER BY 日期 ASC ;

/*取出進站人數最多的前十筆*/
SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號
ORDER BY 進站人數 DESC 
LIMIT 10 ;