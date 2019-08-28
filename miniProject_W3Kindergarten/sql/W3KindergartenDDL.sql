DROP TABLE USERS;

-- 사용자 테이블
CREATE TABLE USERS(
   ID          NUMBER(5)       NOT NULL UNIQUE,
   USERNAME    VARCHAR2(50)   PRIMARY KEY,
   PASSWORD    VARCHAR2(50)   NOT NULL,
   EMAIL       VARCHAR2(100)    NOT NULL,
   NICKNAME    VARCHAR2(50)   NOT NULL,
   PHONE      VARCHAR2(50),
   CREATE_DATE DATE,
   MODIFY_DATE DATE,
   PERMISSION    VARCHAR2(5)
);


insert into users values(seq_w3kindergarten_users.nextval,'woongtae','1234','angle2v@naver.com','woongtaeKING','01058125340',sysdate,sysdate,1);
insert into users values(seq_w3kindergarten_users.nextval,'icji','icji','icji@naver.com','inchul','01051526123',sysdate,sysdate,1);

--insert into USERS values(1,'2','3','4','5',sysdate,sysdate);

-- 사용자 로그인 로그 테이블(Procedure 사용하여  자동 기입되도록 설정)
DROP TABLE USER_LOG;
CREATE TABLE USER_LOG(
	ID 				 NUMBER(5),
	LOGIN_DATE 		  DATE,
	LOGIN_STATUS    	VARCHAR(45),
	LOGIN_TYPE 		  VARCHAR(45)
);

--insert into USER_LOG values(1,sysdate,'1','2');

-- 게시판 테이블
DROP TABLE NOTICE_BOARD;
CREATE TABLE NOTICE_BOARD(
	BOARD_NO  	  NUMBER,			-- 자동
	TITLE  		  VARCHAR2(100),	-- 수동
	CONTENT  	  LONG,			-- 수동
	USERNAME   	VARCHAR2(50),	-- 로그인 정보 참고 
	CREATE_DATE   DATE,			-- sysdate
	MODIFY_DATE   DATE,			-- sysdate
	READ_NUM	 NUMBER			-- 0 -> 클릭시 마다.
);

--insert into BULLTIN_BOARD values(1,'2',3,sysdate,sysdate);

-- 댓글 작성 테이블(https://kwssite.tistory.com/161)
DROP TABLE COMMENTS;
CREATE TABLE COMMENTS(
	COMMENT_NO 		  	NUMBER(5) 			NOT NULL,
	USER_ID  			  VARCHAR(50),
	COMMENT_CONTENT      	long,
	BOARD_NO  	  		NUMBER,	
	CREATE_DATE 		 DATE,
	MODIFY_DATE 	  	DATE
);

--insert into comments values(1,'2',3,4,sysdate,sysdate);

-- 댓글 답글 테이블
DROP TABLE COMMENTS_REPLY;
CREATE TABLE COMMENTS_REPLY(
	REPLY_NO  		  NUMBER(5),
	COMMENT_NO 		  NUMBER(5),
	USER_ID	 	  	  VARCHAR(50),
	REPLY_COMMENT  	long,
	CREATE_DATE  	DATE,
	MODIFY_DATE 	 DATE	
);

--insert into comments_reply values(1,2,'3',4,sysdate,sysdate);




-- SEQUENCE
DROP SEQUENCE seq_w3kindergarten_users;
CREATE SEQUENCE seq_w3kindergarten_users;

DROP SEQUENCE seq_w3kindergarten_noticeBoard;
CREATE SEQUENCE seq_w3kindergarten_noticeBoard;
