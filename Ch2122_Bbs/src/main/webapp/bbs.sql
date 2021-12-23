CREATE TABLE member(
	memberid varchar2(50) primary key,
    name varchar2(50) not null,
    password varchar2(10) not null,
    regdate DATE not null
);

create table article (
    article_no number auto_increment primary key,
    writer_id varchar(50) not null,
    writer_name varchar(50) not null,
    title varchar(255) not null,
    regdate date not null,
    moddate datetime not null,
    read_cnt number
);