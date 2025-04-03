create user 'runnnn'@'localhost' identified by '1111';
create user 'runnnn'@'%' identified by '1111';

-- 생성된 계정 확인
select user, host from mysql.user;

-- 계정에 권한을 부여
-- grant 부여할 권한 on 대상 테이블 to 권한을 부여할 계정
grant all privileges on *.* to runnnn@localhost;
grant all privileges on *.* to runnnn@'%';
-- * : db . * : table

-- 한 명령문이 끝나면 반드시 ; 으로 종료
-- 실행 : ctrl + enter
-- 주석 , ctrl + /
# 주석
/* 주석 
주석 */


#############################
# DB 생성
#############################
create database test_db;
create database hr;

show databases; 

drop database hr;

use test_db;

-- table 이름 => test_db database의 table.
-- sys.sys_config => 다른 database의 table 호출 db이름.table이름

-- create table test_db.member();
use test_db; -- database이름을 명시하지 않으면 test_db이다.

create table member(
	id varchar(10) primary key,
    password varchar(10) not null,
    name varchar(50) not null,
    point int default 1000,
    email varchar(100) not null unique,
    age int check(age > 20),
    join_date timestamp not null default current_timestamp
    -- default current_timestamp : 값이 insert 되는 시점을 저장.
);

-- table 조회
show tables;

-- table의 col정보 조회
desc member;

-- table 삭제
drop table if exists member;

##########################
# insert
##########################
-- 모든 컬럼에 값을 다 넣을 경우 컬럼명 생략
insert into member values ('id-100', '1111', '이순신', 5000, 'lee@email', 30, '2030-12-20 11:11:11');

-- point, join_date : default값, age : null
insert into member (id, password, name, email) values ('id-200', '2222', '홍길동', 'hong@email');

select * from member;

insert into member (id, password, name, point, email) values ('id-300', '3333', '김철수', null, 'kim@email');

select * from member;

insert into member (id, password, name, email, age) values ('id-400', '2222', '홍길동', 'hong2@email', 5);


