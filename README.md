# DB-infomation
DB 정보를 공유하기 위한 공간입니다.

## 기본 환경
1) 스키마명은 midas로 한다.
2) character set은 utf-8을 사용한다.
3) id/password는 root/manager를 사용한다.
4) dump 시 table명과 파일명을 같게 한다.

## mysql dump 방법
### 백업
#### 특정 database의 특정 Table dump
- mysqldump -u [계정] -p [database명] [DB명] > [생성하고자하는 파일명]\
ex) mysqldump -u root -p midas userinfo > userinfo.sql
#### 특정 database의 모든 Table dump
- mysqldump -u [계정] -p --databases [database명] > [생성하고자하는 파일명]\
ex) mysqldump -u root -p midas > all.sql
### 복원
#### 특정 database의 모든 Table dump
- mysql -u [계정] -p [database명] < [백업한 파일명]\
ex) mysql -u root -p midas < all.sql

## 테이블 정보
### all 파일
- 모든 테이블에 대한 정보를 가지고 있습니다.
### users 파일
- user 정보를 저장하기 위한 DB 입니다.
