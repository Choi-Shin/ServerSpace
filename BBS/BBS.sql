create table article_content (
    article_no NUMBER primary key,
    content VARCHAR2(4000)
);

ALTER TABLE article_content ADD CONSTRAINT fk_article_no
foreign KEY(article_no) references article (article_no);

alter table article modify article_no 
CONSTRAINT pk_article_no primary key;

ALTER TABLE article_content DROP PRIMARY KEY;

INSERT INTO article values(
    article_no_seq.nextval,
    'asdfsafd',
    'asdf',
    'adsfs',
    sysdate,
    sysdate,
    0);
    
    
SELECT * FROM (
        SELECT a.*, ROWNUM as rnum FROM (
               SELECT * FROM tbl_student_info ORDER BY height DESC,name ASC
               )
        a)  WHERE rnum >= 1 and rnum <=3;
        
SELECT * 
  FROM(
        SELECT ROWNUM AS RNUM, A.*
            FROM ( select * from article order by article_no desc ) A
         WHERE ROWNUM <= 20
      )
 WHERE RNUM > 10;

CREATE SEQUENCE article_no_seq --시퀀스이름 SEQ1
INCREMENT BY 1     --증감숫자 1
START WITH 1         --시작숫자 1
MINVALUE 1           --최솟값 1
MAXVALUE 100000  --최댓값 100,000
NOCYCLE               --순환(재사용)하지 않음
CACHE 10000          --10000만큼 메모리에 시퀀스값 미리할당 (CPU 사용 감소, 빈번한 시퀀스 이용시)
ORDER; 
 
drop SEQUENCE ARTICLE_NO_SEQ;

select article_no_seq.nextval from dual;

create table article_content (
    article_no NUMBER CONSTRAINT fk_f_f1 REFERENCES 
)