1. table 생성(아래와 같이 구성된 테이블을 생성하시오)
1) table명 member1,
2) id 문자 12자 primary key
3) password 문자
4) name 문자 12
5) reg_date 날자형


CREATE TABLE member1 (
    id VARCHAR2(12) PRIMARY KEY,
    password VARCHAR2,
    name VARCHAR2(12),
    reg_date DATE
)