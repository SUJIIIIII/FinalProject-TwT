SELECT * FROM TravelSchedule;
SELECT * FROM CITY;
--------------------------------용훈-----------------------------------------



--------------------------------범식-----------------------------------------
SELECT * FROM HOTEL;
SELECT * FROM HOTEL LEFT JOIN HOTELROOM USING(H_CODE)
WHERE H_CODE = 'H1';



--------------------------------도영-----------------------------------------
SELECT * FROM SCHEDULEMEMO;
SELECT * 
FROM TRAVELSCHEDULE TS LEFT JOIN TRAVELSCHEDULE_DAY TD ON(TS.TS_CODE = TD.TS_CODE) LEFT JOIN TRAVELPOINT TP ON(TD.TP_CODE = TP.TP_CODE) LEFT JOIN SCHEDULEMEMO SM ON(TS.TS_CODE = SM.TS_CODE)
WHERE TS.TS_CODE = 'TS1'
SELECT * FROM TWTMEMBER;
SELECT * FROM TRAVELPOINT;
SELECT * FROM TRAVELSCHEDULE_DAY;
INSERT INTO "TRAVELSCHEDULE_DAY" (TS_DAY, TS_CODE, TP_CODE) VALUES ('DAY1', 'TS1', 'TP1');
INSERT INTO "TRAVELSCHEDULE_DAY" (TS_DAY, TS_CODE, TP_CODE) VALUES ('DAY1', 'TS1', 'TP101');
INSERT INTO "TRAVELSCHEDULE_DAY" (TS_DAY, TS_CODE, TP_CODE) VALUES ('DAY2', 'TS1', 'TP102');
INSERT INTO "TRAVELSCHEDULE_DAY" (TS_DAY, TS_CODE, TP_CODE) VALUES ('DAY2', 'TS1', 'TP103');
INSERT INTO "TRAVELSCHEDULE_DAY" (TS_DAY, TS_CODE, TP_CODE) VALUES ('DAY3', 'TS1', 'TP104');
INSERT INTO "TRAVELSCHEDULE_DAY" (TS_DAY, TS_CODE, TP_CODE) VALUES ('DAY3', 'TS1', 'TP105');
DELETE FROM TRAVELSCHEDULE_DAY WHERE TP_CODE='TP101'
DELETE FROM SCHEDULEMEMO WHERE SM_MEMO='여행일정2'
DELETE FROM FAVORITE_LIST WHERE M_CODE='M1'
UPDATE TRAVELSCHEDULE_DAY SET TS_DAY='DAY2' WHERE TP_CODE='TP102'
INSERT INTO "SCHEDULEMEMO" (TS_CODE, M_CODE, TP_CODE, SM_MEMO, SM_MONEY) VALUES ('TS1', 'M1', 'TP100', '여행일정', '30000')
INSERT INTO "SCHEDULEMEMO" (TS_CODE, M_CODE, TP_CODE, SM_MEMO, SM_MONEY) VALUES ('TS1', 'M1', 'TP101', '여행일정2', '50000')
INSERT INTO "SCHEDULEMEMO" (TS_CODE, M_CODE, TP_CODE, SM_MEMO, SM_MONEY) VALUES ('TS1', 'M1', 'TP103', '여행일정4', '100000')
INSERT INTO FAVORITE_LIST VALUES 
		('TS13', 'M1', 'Y')

// 디테일리스트
SELECT * FROM TRAVELSCHEDULE TS 
LEFT JOIN TWTMEMBER M ON (TS.M_CODE = M.M_CODE) 
LEFT JOIN TRAVELSCHEDULE_DAY TD ON (TS.TS_CODE = TD.TS_CODE) 
LEFT JOIN TRAVELPOINT TP ON(TS.TP_CODE = TP.TP_CODE) 
WHERE TS.TS_CODE = 'TS1'
		
SELECT TS.TS_CODE, TS.M_CODE, TS.TP_CODE, TS.TS_TITLE, TS.TS_SDAY, TS.TS_THEME, TS.TS_PEOPLE, TS.TS_PERIOD, TS.TS_DATE, TS.TS_VIEW, M.M_NAME
		FROM TRAVELSCHEDULE TS 
		LEFT JOIN TWTMEMBER M ON (TS.M_CODE = M.M_CODE) 
		WHERE TS.TS_CODE = 'TS1'

// 연관리스트
SELECT TS.TS_CODE, TS.M_CODE, TD.TP_CODE, TS.TS_TITLE, TS.TS_SDAY, TS.TS_THEME, TS.TS_PEOPLE, TS.TS_THUM, TS.TS_DATE, TS.TS_VIEW, M_NAME, TP.CITY_CODE, TP.TP_IMG 
FROM TRAVELSCHEDULE TS 
LEFT JOIN TWTMEMBER M ON (TS.M_CODE = M.M_CODE) 
LEFT JOIN TRAVELSCHEDULE_DAY TD ON (TS.TS_CODE = TD.TS_CODE) 
LEFT JOIN TRAVELPOINT TP ON(TS.TP_CODE = TP.TP_CODE) 
WHERE TS.TS_THEME = '여행테마' 
ORDER BY TS_DATE DESC

				SELECT FL.FL_CODE, FL.M_CODE, FL.FL_CHECK
				FROM TRAVELSCHEDULE TS 
				LEFT JOIN FAVORITE_LIST FL ON(TS.TS_CODE = FL.FL_CODE)
				WHERE FL.M_CODE = 'M1'
				
				SELECT FL.FL_CODE, FL.M_CODE, FL.FL_CHECK
				FROM TRAVELSCHEDULE TS
				LEFT JOIN FAVORITE_LIST FL ON(TS.TS_CODE = FL.FL_CODE)
				
				SELECT FL_CODE, M_CODE, FL_CHECK
				FROM FAVORITE_LIST
				WHERE M_CODE = 'M1' AND FL_CHECK = 'Y' 
				
		SELECT TS.TS_TITLE, TS.TS_CODE, FL.FL_CODE, FL.M_CODE, FL.FL_CHECK
		FROM TRAVELSCHEDULE TS
		LEFT JOIN FAVORITE_LIST FL ON (TS.TS_CODE = FL.FL_CODE)
		WHERE FL.M_CODE = 'M1'
		
		SELECT TS.TS_CODE, TS.M_CODE, TS.TP_CODE, TS.TS_TITLE, TS.TS_SDAY, TS.TS_THEME, TS.TS_PEOPLE, TS.TS_THUM, TS.TS_PERIOD, TS.TS_DATE, TS.TS_VIEW, M.M_NAME, TP.CITY_CODE, TP.TP_IMG, FL.FL_CODE, FL.FL_CHECK, FL.M_CODE
		FROM TRAVELSCHEDULE TS
		LEFT JOIN TWTMEMBER M ON (TS.M_CODE = M.M_CODE) 
		LEFT JOIN TRAVELPOINT TP ON(TS.TP_CODE = TP.TP_CODE)
		LEFT JOIN FAVORITE_LIST FL ON(TS.TS_CODE = FL.FL_CODE)
		
		ORDER BY TS_DATE DESC
				
--------------------------------보미-----------------------------------------


--------------------------------찬우-----------------------------------------



--------------------------------수지-----------------------------------------
SELECT * FROM TRAVELPOINT ORDER BY SUBSTR(CITY_CODE, 3), TO_NUMBER(SUBSTR(TP_CODE, 3));
SELECT * FROM CITY;
SELECT * FROM TwTMEMBER;
SELECT * FROM SCHEDULEREVIEW;
SELECT * FROM TRAVELPOINT ORDER BY city_code*1;
--------------------------------철환-----------------------------------------


