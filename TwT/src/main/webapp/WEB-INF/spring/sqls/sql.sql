SELECT * FROM TravelSchedule;
SELECT * FROM CITY;
--------------------------------용훈-----------------------------------------



--------------------------------범식-----------------------------------------
SELECT * FROM HOTEL;



--------------------------------도영-----------------------------------------

SELECT * FROM TRAVELSCHEDULE;
UPDATE TRAVELSCHEDULE SET M_CODE = 'M3' WHERE M_CODE = 'M2'
SELECT * FROM TRAVELSCHEDULE LEFT JOIN TWTMEMBER USING(M_CODE) ORDER BY TS_CODE DESC;
SELECT * FROM SCHEDULEREVIEW;
SELECT * FROM TRAVELSCHEDULE LEFT JOIN SCHEDULEREVIEW USING(M_CODE) ORDER BY SR_VIEW DESC;
SELECT * FROM TRAVELSCHEDULE LEFT JOIN SCHEDULEREVIEW USING(M_CODE) LEFT JOIN TWTMEMBER USING(M_CODE) ORDER BY TS_DATE DESC;
SELECT * FROM TRAVELSCHEDULE JOIN SCHEDULEREVIEW USING(M_CODE) JOIN TWTMEMBER USING(M_CODE) ORDER BY TS_DATE DESC
SELECT * FROM TRAVELSCHEDULE LEFT JOIN SCHEDULEREVIEW USING(M_CODE) LEFT JOIN TWTMEMBER USING(M_CODE) ORDER BY TS_DATE DESC
UPDATE SCHEDULEREVIEW SET M_CODE = 'M1' WHERE M_CODE IS NULL;
SELECT * FROM TRAVELSCHEDULE LEFT JOIN TWTMEMBER USING(M_CODE) LEFT JOIN TRAVELPOINT USING(TP_CODE)
SELECT * FROM TRAVELPOINT;

--------------------------------보미-----------------------------------------


--------------------------------찬우-----------------------------------------



--------------------------------수지-----------------------------------------
SELECT * FROM TRAVELPOINT;
SELECT * FROM CITY;
SELECT * FROM TwTMEMBER;
--------------------------------철환-----------------------------------------


