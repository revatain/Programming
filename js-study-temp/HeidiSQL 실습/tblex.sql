/*테이블 생성 : 테이블, 컬럼, 레코드, 스키마*/
CREATE TABLE tblEx1(
 id INT,
 NAME1 CHAR(10),
 pwd CHAR(10),
 adds CHAR(10)
 )
 SELECT*FROM tblex1;
 
 INSERT tblEx1 VALUES (1, '홍길동', '1234', '서울');
 INSERT tblEx1 VALUES (2, '장동건', '1234', '서울');
 INSERT tblEx1 VALUES (3, '강호동', '1234', '서울');
 
 UPDATE tblEx1 SET NAME = '홍길자' WHERE id = 1;
 
 DELETE FROM tblEx1 WHERE id = 2;
 
 CREATE TABLE tblEx2 (
 id INT PRIMARY KEY AUTO_INCREMENT,
 NAME CHAR(10) NOT NULL,
 pwd CHAR(10)
)
 SELECT*FROM tblEx2;
 INSERT tblEx2 (NAME, pwd) VALUES ('aaa', '1234');
 INSERT tblEx2 (pwd) VALUES ('1234');
 INSERT tblEx2 (NAME) VALUES ('bbb');
 
 UPDATE tblEx2 SET pwd = '1234' WHERE id = 2;
 
 DELETE FROM tblEx2 WHERE id = 1;
 
 
 
 tblex2tblex1tblex1tblex2tblmembertblzipcodetblzipcode