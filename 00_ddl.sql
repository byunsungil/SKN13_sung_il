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
-- 주석
# 주석
/* 주석 
주석 */