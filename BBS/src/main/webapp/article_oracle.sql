
create table member (
    memberid varchar2(50) primary key,
    name varchar2(50) not null,
    password varchar2(10) not null,
    regdate date not null
);

create table article (
	article_no number(2) not null primary key, --게시글 번호
	writer_id varchar2(50) not null, --작성자id
    writer_name varchar2(50) not null,-- 작성자 name
    title varchar2(255) not null,
    regdate date not null,--최초 작성일시
    moddate date not null,--마지막 수정일시
    read_cnt number(2) -- 조회수
) ;

CREATE SEQUENCE article_no_seq INCREMENT BY 1 START WITH 1;

--게시글 내용
create table article_content (
    article_no number(2) primary key,--article테이블과 일치
    content long
);























DROP USER kamejsp CASCADE;

CREATE USER kamejsp 
IDENTIFIED BY kamejsp 
DEFAULT TABLESPACE users 
TEMPORARY TABLESPACE temp 
PROFILE DEFAULT;

GRANT CONNECT, RESOURCE TO kamejsp;
GRANT CREATE VIEW, CREATE SYNONYM TO kamejsp;

ALTER USER kamejsp ACCOUNT UNLOCK;
commit;


create table id_sequence (
	sequence_name varchar(10) not null primary key,
	next_value number(2) not null
);

insert into id_sequence values ('article', 0);

create table article (
	article_id number(2) not null primary key,
	group_id number(2) not null,
	sequence_no char(16) not null,
	posting_date date not null,
	read_count number(2) not null,
	writer_name varchar(20) not null,
	password varchar(10),
	title varchar(100),
	content NVARCHAR2(400)
) ;

CREATE SEQUENCE article_id_seq INCREMENT BY 1 START WITH 1;


[ArticlDao.java]
순서1
select article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from article order by sequence_no desc;

순서2
select rownum rnum,article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from (select article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from article order by sequence_no desc);

순서3
select * from (select rownum rnum,article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from (select article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title from article order by sequence_no desc)) where rnum between 1 and 10;


select article_id, group_id, sequence_no, posting_date, read_count, writer_name, password, title 
from article 
where rownum between 1 and 10
order by sequence_no desc;















[Mysql]
create table id_sequence (
	sequence_name varchar(10) not null,
	next_value int not null,
	primary key (sequence_name)
) default character set = euckr;

insert into id_sequence values ('article', 0);

create table article (
	article_id int not null auto_increment,
	group_id int not null,
	sequence_no char(16) not null,
	posting_date datetime not null,
	read_count int not null,
	writer_name varchar(20) not null,
	password varchar(10),
	title varchar(100),
	content text,
	primary key (article_id),
	index (sequence_no)
) default character set = euckr;




