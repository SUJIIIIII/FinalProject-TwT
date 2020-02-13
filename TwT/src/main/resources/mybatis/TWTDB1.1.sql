--?드롭문
--?DROP?TABLE

DROP TABLE "TWTMEMBER" CASCADE CONSTRAINTS;
DROP TABLE "HOTEL" CASCADE CONSTRAINTS;
DROP TABLE "CITY" CASCADE CONSTRAINTS;
DROP TABLE "SCHEDULEREVIEW";
DROP TABLE "TRAVELPOINT" CASCADE CONSTRAINTS;
DROP TABLE "TRAVELSCHEDULE" CASCADE CONSTRAINTS;
DROP TABLE "TRAVELSCHEDULE_DAY" CASCADE CONSTRAINTS;
DROP TABLE "SCHEDULE_ANS";
DROP TABLE "PAYMENT_INFO";
DROP TABLE "HBOOKING";
DROP TABLE "HOTELREVIEW";
DROP TABLE "HOTELROOM";
DROP TABLE "REVIEW_ANS";
DROP TABLE "AIRPLANEINFO";
DROP TABLE "CHAT_USER";
DROP TABLE "CHAT";
DROP TABLE "FAVORITE_LIST";


--?임시?시퀀스
CREATE SEQUENCE CT_SEQ;
--?도시

--?시퀀스?DROP
DROP SEQUENCE SR_SEQ; --?일정리뷰
DROP SEQUENCE SRA_SEQ; --?일정리뷰?댓글
DROP SEQUENCE SB_SEQ; --?일정공유
DROP SEQUENCE SBA_SEQ; --?일정공유?댓글
DROP SEQUENCE TP_SEQ; --?여행지
DROP SEQUENCE TS_SEQ; --?여행일정
DROP SEQUENCE DAY_SEQ; --?DAY별
DROP SEQUENCE HR_SEQ; --?방번호
DROP SEQUENCE H_SEQ; --?호텔번호
DROP SEQUENCE HRV_SEQ; --?호텔리뷰
DROP SEQUENCE HB_SEQ; --?예약번호
DROP SEQUENCE M_SEQ; --?회원번호
DROP SEQUENCE CH_SEQ;
--?채팅방?번호


--?임시?시퀀스
DROP SEQUENCE CT_SEQ;
--?도시

------------------------------------------------------------------------------------

CREATE SEQUENCE SR_SEQ; --?일정리뷰 EX)SR1
CREATE SEQUENCE SRA_SEQ; --?일정리뷰?댓글 EX)SRA1
CREATE SEQUENCE SB_SEQ; --?일정공유 EX)SB1
CREATE SEQUENCE SBA_SEQ; --?일정공유?댓글 SBA1
CREATE SEQUENCE TP_SEQ; --?여행지 TP1
CREATE SEQUENCE TS_SEQ; --?여행일정 TS1
CREATE SEQUENCE DAY_SEQ; --?DAY별 DAY1
CREATE SEQUENCE HR_SEQ; --?방번호 HRSEQ1
CREATE SEQUENCE H_SEQ; --?호텔번호 H1
CREATE SEQUENCE HRV_SEQ; --?호텔리뷰 HRV1
CREATE SEQUENCE HB_SEQ; --?예약번호 HB1
CREATE SEQUENCE M_SEQ; --?회원번호 M1
CREATE SEQUENCE CH_SEQ;
--?채팅방?번호 CH1


------------------------------------------------------------------------------------
--?테이블?생성
CREATE TABLE "TWTMEMBER" -- 회원관리
(
    "M_CODE"  VARCHAR2(1000) NOT NULL,
    "M_ID"    VARCHAR2(100)  NOT NULL,
    "M_PASS"  VARCHAR2(1000) NOT NULL,
    "M_NAME"  VARCHAR2(500)  NOT NULL,
    "M_EMAIL" VARCHAR2(500)  NOT NULL,
    "M_API"   VARCHAR2(500)
);

CREATE TABLE "SCHEDULEREVIEW" -- 일정리뷰
(
    "SR_CODE"    VARCHAR2(100)  NOT NULL,
    "M_CODE"     VARCHAR2(100)  NOT NULL,
    "TS_CODE"    VARCHAR2(100)  NOT NULL,
    "SR_TITLE"   VARCHAR2(500)  NOT NULL,
    "SR_CONTENT" VARCHAR2(4000) NOT NULL,
    "SR_FILE"    VARCHAR2(500)  NOT NULL,
    "SR_VIEW"    NUMBER         NULL,
    "SR_DATE" DATE NOT NULL
);

CREATE TABLE "TRAVELPOINT" -- 여행지
(
    "TP_CODE"    VARCHAR2(100)  NOT NULL,
    "CITY_CODE"  VARCHAR2(100)  NOT NULL,
    "TP_NAME"    VARCHAR2(100)  NOT NULL,
    "TP_LATI"    NUMBER         NOT NULL,
    "TP_LONG"    NUMBER         NOT NULL,
    "TP_TYPE"    VARCHAR2(100)  NOT NULL,
    "TP_CONTENT" VARCHAR2(2000) NULL,
    "TP_IMG"     VARCHAR2(1000) NOT NULL,
    "TP_ADDR"    VARCHAR2(1000) NOT NULL
);

CREATE TABLE "TRAVELSCHEDULE" -- 여행 일정
(
    "TS_CODE"   VARCHAR2(100)  NOT NULL,
    "M_CODE"    VARCHAR2(1000) NOT NULL,
    "TP_CODE"   VARCHAR2(100)  NOT NULL,
    "TS_TITLE"  VARCHAR2(500)  NOT NULL,
    "TS_SDAY"   DATE           NOT NULL,
    "TS_THEME"  VARCHAR2(50)   NULL,
    "TS_PEOPLE" VARCHAR2(50)   NULL,
    "TS_THUM"   VARCHAR2(1000) NULL,
    "TS_PERIOD" NUMBER         NULL
);

CREATE TABLE "CITY" -- 도시
(
    "CITY_CODE" VARCHAR2(100)  NOT NULL,
    "CITY_NAME" VARCHAR2(500)  NOT NULL,
    "CITY_LATI" NUMBER         NOT NULL,
    "CITY_LONG" NUMBER         NOT NULL,
    "CITY_IMG"  VARCHAR2(1000) NULL,
    "CITY_ENG" VARCHAR2(100) NULL
);

CREATE TABLE "TRAVELSCHEDULE_DAY" -- 여행일정 별 DAY
(
    "TS_DAY"   VARCHAR2(100)  NOT NULL,
    "TS_CODE"  VARCHAR2(100)  NOT NULL,
    "TP_CODE"  VARCHAR2(100)  NOT NULL,
    "TS_MEMO"  VARCHAR2(1000) NULL,
    "TS_MONEY" NUMBER         NULL
);

CREATE TABLE "SCHEDULE_ANS" -- 일정공유 답글
(
    "SBA_CODE"    VARCHAR2(100) NOT NULL,
    "M_CODE"      VARCHAR2(100) NOT NULL,
    "SB_CODE"     VARCHAR2(100) NOT NULL,
    "SBA_CONTENT" VARCHAR2(100) NULL,
    "CBA_DATE"    DATE          NOT NULL,
    "TS_CODE"     VARCHAR2(100) NOT NULL
);

CREATE TABLE "REVIEW_ANS" -- 일정리뷰, 답글
(
    "SRA_CODE"    VARCHAR2(100)  NOT NULL,
    "TS_CODE"     VARCHAR2(100)  NOT NULL,
    "M_CODE"      VARCHAR2(100)  NOT NULL,
    "SRA_CONTENT" VARCHAR2(2000) NULL,
    "SRA_DATE"    DATE           NOT NULL
);

CREATE TABLE "HOTEL" -- 숙소
(
    "H_CODE"         VARCHAR2(100)  NOT NULL,
    "CITY_CODE"      VARCHAR2(100)  NOT NULL,
    "H_NAME"         VARCHAR2(1000) NOT NULL,
    "H_LATI"         NUMBER         NOT NULL,
    "H_LONG"         NUMBER         NOT NULL,
    "H_PHONE"        VARCHAR2(500)  NOT NULL,
    "H_BASICADDR"    VARCHAR2(1000) NULL,
    "H_ADDR"         VARCHAR2(1000) NOT NULL,
    "H_IMG"          VARCHAR2(1000) NULL,
    "H_CONTENT"      VARCHAR2(2000) NOT NULL,
    "H_STARN"        NUMBER         NOT NULL,
    "H_BASICCONTENT" VARCHAR2(1000) NOT NULL
);

CREATE TABLE "HBOOKING" -- 숙소예약
(
    "HB_CODE"   VARCHAR2(100)  NOT NULL,
    "M_CODE"    VARCHAR2(1000) NOT NULL,
    "HR_CODE"   VARCHAR2(100)  NOT NULL,
    "H_CODE"    VARCHAR2(100)  NOT NULL,
    "HB_SDATE"  DATE           NOT NULL,
    "HB_EDATE"  DATE           NOT NULL,
    "HB_CHECK"  VARCHAR2(50)   NOT NULL,
    "HB_PEOPLE" NUMBER         NOT NULL,
    "HB_NAME"   VARCHAR2(50)   NOT NULL,
    "HB_DATE" DATE NOT NULL
);

CREATE TABLE "PAYMENT_INFO" -- 결제정보 (임시테이블)
(
    "M_CODE" VARCHAR(255) NOT NULL
);

CREATE TABLE "HOTELREVIEW" -- 호텔리뷰
(
    "HRV_CODE"    VARCHAR2(100) NOT NULL,
    "HR_CODE"     VARCHAR2(100) NOT NULL,
    "HB_CODE"     VARCHAR2(100) NOT NULL,
    "M_CODE"      VARCHAR2(100) NOT NULL,
    "HRV_CONTENT" VARCHAR2(100) NOT NULL,
    "HRV_DATE"    DATE          NOT NULL,
    "HRV_STARN"   NUMBER        NOT NULL,
    "HRV_VIEW" NUMBER NULL
);

CREATE TABLE "FAVORITE_LIST" -- 찜목록
(
    "FL_CODE"  VARCHAR2(100) NOT NULL,
    "M_CODE"   VARCHAR2(100) NOT NULL,
    "FL_CHECK" VARCHAR2(50)  NULL
);

CREATE TABLE "AIRPLANEINFO" -- 항공정보
(
    "M_CODE"    VARCHAR2(50)  NOT NULL,
    "DEP_LOCA1" VARCHAR2(100) NOT NULL,
    "DEP_LOCA2" VARCHAR2(100) NOT NULL,
    "DEP_DATE1" DATE          NOT NULL,
    "DEP_DATE2" DATE          NOT NULL,
    "DEP_TIME1" VARCHAR2(100) NULL,
    "DEP_TIME2" VARCHAR2(100) NULL,
    "RE_LOCA1"  VARCHAR2(100) NOT NULL,
    "RE_LOCA2"  VARCHAR2(100) NOT NULL,
    "RE_DATE1"  DATE          NOT NULL,
    "RE_DATE2"  DATE          NOT NULL,
    "RE_TIME1"  VARCHAR2(100) NULL,
    "RE_TIME2"  VARCHAR2(100) NULL
);

CREATE TABLE "HOTELROOM" -- 호텔방 정보
(
    "HR_CODE"      VARCHAR2(100)  NOT NULL,
    "H_CODE"       VARCHAR2(10)   NOT NULL,
    "HR_STANDARD"  NUMBER         NOT NULL,
    "HR_MAX"       NUMBER         NOT NULL,
    "HR_PRICE"     NUMBER         NOT NULL,
    "HR_VALID"     NUMBER         NOT NULL,
    "HR_RANK"      VARCHAR2(500)  NOT NULL,
    "HR_IMG"       VARCHAR2(1000) NOT NULL,
    "HR_WIFI"      VARCHAR2(10)   NULL,
    "HR_SMOKING"   VARCHAR2(10)   NULL,
    "HR_BREAKFAST" VARCHAR2(10)   NULL,
    "HR_BED"       NUMBER         NULL,
    "HR_DATE"      DATE           NOT NULL
);

CREATE TABLE "CHAT" -- 채팅
(
    "CH_CODE"   VARCHAR2(100) NOT NULL,
    "CITY_CODE" VARCHAR2(100) NOT NULL,
    "CH_TITLE"  VARCHAR2(100) NOT NULL
);

CREATE TABLE "CHAT_USER" -- 채팅방 유저
(
    "M_CODE"     VARCHAR2(1000) NOT NULL,
    "CH_CODE"    VARCHAR2(100)  NOT NULL,
    "CH_MESSAGE" VARCHAR2(500)  NULL,
    "CH_TIME"    DATE           NOT NULL

);

-----------------------------------------------------------------------------------------------------------------------
-- 제약조건 추가

ALTER TABLE "SCHEDULEREVIEW"
    ADD CONSTRAINT "PK_SCHEDULEREVIEW" PRIMARY KEY (
                                                    "SR_CODE"
        );
ALTER TABLE "TRAVELPOINT"
    ADD CONSTRAINT "PK_TRAVELPOINT" PRIMARY KEY (
                                                 "TP_CODE"
        );
ALTER TABLE "TRAVELSCHEDULE"
    ADD CONSTRAINT "PK_TRAVELSCHEDULE" PRIMARY KEY (
                                                    "TS_CODE"
        );
ALTER TABLE "CITY"
    ADD CONSTRAINT "PK_CITY" PRIMARY KEY (
                                          "CITY_CODE"
        );
ALTER TABLE "TRAVELSCHEDULE_DAY"
    ADD CONSTRAINT "PK_TRAVELSCHEDULE_DAY" PRIMARY KEY (
                                                        "TS_DAY"
        );
ALTER TABLE "TWTMEMBER"
    ADD CONSTRAINT "PK_TWTMEMBER" PRIMARY KEY (
                                               "M_CODE"
        );
ALTER TABLE "SCHEDULE_ANS"
    ADD CONSTRAINT "PK_SCHEDULE_ANS" PRIMARY KEY (
                                                  "SBA_CODE"
        );
ALTER TABLE "REVIEW_ANS"
    ADD CONSTRAINT "PK_REVIEW_ANS" PRIMARY KEY (
                                                "SRA_CODE"
        );
ALTER TABLE "HOTEL"
    ADD CONSTRAINT "PK_HOTEL" PRIMARY KEY (
                                           "H_CODE"
        );
ALTER TABLE "HBOOKING"
    ADD CONSTRAINT "PK_HBOOKING" PRIMARY KEY (
                                              "HB_CODE"
        );
ALTER TABLE "PAYMENT_INFO"
    ADD CONSTRAINT "PK_PAYMENT_INFO" PRIMARY KEY (
                                                  "M_CODE"
        );
ALTER TABLE "HOTELREVIEW"
    ADD CONSTRAINT "PK_HOTELREVIEW" PRIMARY KEY (
                                                 "HRV_CODE"
        );
ALTER TABLE "AIRPLANEINFO"
    ADD CONSTRAINT "PK_AIRPLANEINFO" PRIMARY KEY (
                                                  "M_CODE"
        );
ALTER TABLE "HOTELROOM"
    ADD CONSTRAINT "PK_HOTELROOM" PRIMARY KEY (
                                               "HR_CODE"
        );
ALTER TABLE "CHAT"
    ADD CONSTRAINT "PK_CHAT" PRIMARY KEY (
                                          "CH_CODE"
        );
ALTER TABLE "CHAT_USER"
    ADD CONSTRAINT "PK_CHAT_USER" PRIMARY KEY (
                                               "M_CODE",
                                               "CH_CODE"
        );
ALTER TABLE "SCHEDULEREVIEW"
    ADD CONSTRAINT "FK_MEMBER_TO_SCHEDULERE" FOREIGN KEY (
                                                          "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );

ALTER TABLE "TRAVELPOINT"
    ADD CONSTRAINT "FK_CITY_TO_TRAVELPOINT_1" FOREIGN KEY (
                                                           "CITY_CODE"
        )
        REFERENCES "CITY" (
                           "CITY_CODE"
            );
ALTER TABLE "TRAVELSCHEDULE"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_SCHEDULE_1" FOREIGN KEY (
                                                             "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );


ALTER TABLE "SCHEDULE_ANS"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_SCHEDULE_ANS_1" FOREIGN KEY (
                                                                 "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );
ALTER TABLE "REVIEW_ANS"
    ADD CONSTRAINT "REVIEW_ANS_FK1" FOREIGN KEY ("TS_CODE")
        REFERENCES "TWT"."TRAVELSCHEDULE" ("TS_CODE") ;

ALTER TABLE "REVIEW_ANS"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_REVIEW_ANS_1" FOREIGN KEY (
                                                               "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );
ALTER TABLE "HOTEL"
    ADD CONSTRAINT "FK_CITY_TO_HOTEL_1" FOREIGN KEY (
                                                     "CITY_CODE"
        )
        REFERENCES "CITY" (
                           "CITY_CODE"
            );
ALTER TABLE "HBOOKING"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_HBOOKING_1" FOREIGN KEY (
                                                             "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );
ALTER TABLE "HBOOKING"
    ADD CONSTRAINT "FK_HOTELROOM_TO_BOOKING_1" FOREIGN KEY (
                                                            "HR_CODE"
        )
        REFERENCES "HOTELROOM" (
                                "HR_CODE"
            );
ALTER TABLE "HBOOKING"
    ADD CONSTRAINT "FK_HOTEL_TO_BOOKING_1" FOREIGN KEY (
                                                        "H_CODE"
        )
        REFERENCES "HOTEL" (
                            "H_CODE"
            );
ALTER TABLE "PAYMENT_INFO"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_PAYMENT_INFO_1" FOREIGN KEY (
                                                                 "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );
ALTER TABLE "HOTELREVIEW"
    ADD CONSTRAINT "FK_HOTELROOM_TO_HOTELREVIEW_1" FOREIGN KEY (
                                                                "HR_CODE"
        )
        REFERENCES "HOTELROOM" (
                                "HR_CODE"
            );

ALTER TABLE "FAVORITE_LIST"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_FAVORITELIST" FOREIGN KEY (
                                                               "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );
ALTER TABLE "AIRPLANEINFO"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_AIRPLANEINFO_1" FOREIGN KEY (
                                                                 "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );
ALTER TABLE "HOTELROOM"
    ADD CONSTRAINT "FK_HOTEL_TO_HOTELROOM_1" FOREIGN KEY (
                                                          "H_CODE"
        )
        REFERENCES "HOTEL" (
                            "H_CODE"
            );
ALTER TABLE "CHAT"
    ADD CONSTRAINT "FK_CITY_TO_CHAT_1" FOREIGN KEY (
                                                    "CITY_CODE"
        )
        REFERENCES "CITY" (
                           "CITY_CODE"
            );
ALTER TABLE "CHAT_USER"
    ADD CONSTRAINT "FK_TWTMEMBER_TO_CHAT_USER_1" FOREIGN KEY (
                                                              "M_CODE"
        )
        REFERENCES "TWTMEMBER" (
                                "M_CODE"
            );
ALTER TABLE "CHAT_USER"
    ADD CONSTRAINT "FK_CHAT_TO_CHAT_USER_1" FOREIGN KEY (
                                                         "CH_CODE"
        )
        REFERENCES "CHAT" (
                           "CH_CODE"
            );

ALTER TABLE "SCHEDULE_ANS"
    ADD CONSTRAINT "FK_travelSchedule_TO_Ans_1" FOREIGN KEY (
                                                             "TS_CODE"
        ) REFERENCES "TRAVELSCHEDULE" (
                                       "TS_CODE"
        );

--  'm' || m_seq.nextval
-- 멤버 샘플
INSERT INTO "TWTMEMBER" (M_CODE, M_ID, M_PASS, M_NAME, M_EMAIL, M_API)
VALUES ('M1', 'test01', 'a1234', '테스트', 'test@test.com', 'a123456789');
INSERT INTO "TWTMEMBER" (M_CODE, M_ID, M_PASS, M_NAME, M_EMAIL, M_API)
VALUES ('M2', 'test02', 'a1234', '테스트02', 'test2@test.com', NULL);

-- 도시 샘플
INSERT INTO "CITY" (CITY_CODE, CITY_NAME, CITY_LATI, CITY_LONG, CITY_IMG, CITY_ENG)
VALUES ('CT1', '방콕', '1234', '1234', 'BANGCOK.JPG', 'Bangkok');

-- 호텔 샘플
INSERT INTO "HOTEL" (H_CODE, CITY_CODE, H_NAME, H_LATI, H_LONG, H_PHONE, H_BASICADDR, H_ADDR, H_IMG, H_CONTENT, H_STARN, H_BASICCONTENT)
VALUES ('H1', 'CT1', '테스트호텔', '1234', '1234', '1234-1234', '간략주소', '긴주소', 'HOTELIMG.JPG', '호텔설명', '5', '간략호텔설명');
INSERT INTO "HOTEL" (H_CODE, CITY_CODE, H_NAME, H_LATI, H_LONG, H_PHONE, H_BASICADDR, H_ADDR, H_IMG, H_CONTENT, H_STARN,
                     H_BASICCONTENT)
VALUES ('H2', 'CT1', '테스트호텔', '1234', '1234', '1234-1234', '간략주소', '긴주소', 'HOTELIMG.JPG', '호텔설명', '5', '간략호텔설명');

-- 호텔방 샘플
INSERT INTO "TWT"."HOTELROOM" (HR_CODE, H_CODE, HR_STANDARD, HR_MAX, HR_PRICE, HR_VALID, HR_RANK, HR_IMG, HR_WIFI, HR_SMOKING, HR_BREAKFAST, HR_BED, HR_DATE) 
VALUES ('HR1', 'H1', '2', '4', '30000', '10', 'SWEET', 'HRIMG', 'Y', 'Y', 'Y', '3', TO_DATE('2020-02-12 14:19:26', 'YYYY-MM-DD HH24:MI:SS'));

-- 호텔예약 샘플
INSERT INTO "HBOOKING" (HB_CODE, M_CODE, HR_CODE, H_CODE, HB_SDATE, HB_EDATE, HB_CHECK, HB_PEOPLE, HB_NAME, HB_DATE) 
VALUES ('HB1', 'M1', 'HR1', 'H1', TO_DATE('2020-02-12 14:16:23', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-02-13 14:16:25', 'YYYY-MM-DD HH24:MI:SS'), 'Y', '3', '짱구', TO_DATE('2020-02-12 14:16:33', 'YYYY-MM-DD HH24:MI:SS'));

-- 호텔리뷰 샘플
INSERT INTO "HOTELREVIEW" (HRV_CODE, HR_CODE, HB_CODE, M_CODE, HRV_CONTENT, HRV_DATE, HRV_STARN, HRV_VIEW)
VALUES ('HRV1', 'HR1', 'HB1', 'M1', '호텔리뷰내용', SYSDATE, 5, 1);

-- 여행지 정보 샘플
INSERT INTO "TRAVELPOINT" (TP_CODE, CITY_CODE, TP_NAME, TP_LATI, TP_LONG, TP_TYPE, TP_CONTENT, TP_IMG, TP_ADDR) VALUES ('TP1', 'CT1', '방콕여행지1', '1234', '1234', '관광지', '여행지설명', 'TPIMG.JPG', '여행지 주소');

-- 여행일정 샘플
INSERT INTO "TRAVELSCHEDULE" (TS_CODE, M_CODE, TP_CODE, TS_TITLE, TS_SDAY, TS_THEME, TS_PEOPLE, TS_THUM, TS_PERIOD) VALUES ('TS1', 'M1', 'TP1', '테스트일정', TO_DATE('2020-02-18', 'YYYY-MM-DD'), '여행테마', '1', 'THUM.JPG', 3);

--여행일정  DAY
INSERT INTO "TRAVELSCHEDULE_DAY" (TS_DAY, TS_CODE, TP_CODE, TS_MEMO, TS_MONEY) VALUES ('DAY1', 'TS1', 'TP1', '여행메모', 30000);

-- 여행일정 댓글
INSERT INTO "REVIEW_ANS" (SRA_CODE, TS_CODE, M_CODE, SRA_CONTENT, SRA_DATE) VALUES ('SRA1', 'TS1', 'M1', '여행일정 댓글', TO_DATE('2020-02-12 13:42:57', 'YYYY-MM-DD HH24:MI:SS'));

-- 여행리뷰
INSERT INTO "SCHEDULEREVIEW" (SR_CODE, M_CODE, TS_CODE, SR_TITLE, SR_CONTENT, SR_FILE, SR_VIEW, SR_DATE) VALUES ('SR1', 'M1', 'TS1', '일정리뷰제목', '일정리뷰내용', 'FILE', '0', TO_DATE('2020-02-12 13:50:34', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;






