create table springboard(
	idx number not null,
	title varchar2(100) not null,
	content varchar2(2000) not null,
	writer varchar2(20) not null,
	indata date default sysdate,
	count number default 0,
	constraint pk_sb primary key(idx)
)

create sequence sboard_seq
start with 1
increment by 1
maxvalue 100
cycle
nocache;

insert into springboard(idx,title,content,writer) values (sboard_seq.nextval, '제목1','내용1','제동진');
insert into springboard(idx,title,content,writer) values (sboard_seq.nextval, '제목2','내용2','제동진');

select * from SPRINGBOARD;