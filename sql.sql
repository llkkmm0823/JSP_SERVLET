CREATE TABLE MEMBERS(
	ID VARCHAR2(10),
	NAME VARCHAR2(15),
	PWD VARCHAR2(20),
	PHONE VARCHAR2(15)
);

INSERT INTO MEMBERS VALUES('SOMI', '이소미', '1234', '010-1234-1234');
INSERT INTO MEMBERS VALUES('SANG', '전상오', '1234', '010-5555-6666');
INSERT INTO MEMBERS VALUES('LIGHT', '김빛나', '1234', '010-2222-3333');

select * from MEMBERS;

commit

delete from members where id is null;