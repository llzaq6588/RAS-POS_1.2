﻿
=======================   RAS-POS system 1.2ver  ===================================

	※ 본 웹 에플리케이션은 웹서버 위에서 동작합니다.
	※ 본 웹 에플리케이션은 UTF-8 인코딩을 사용합니다.
	※ 본 웹 에플리케이션 내에 상품정보는 사용자가 '직접' 입력해야합니다.
		<상품정보가 없다고 문의하지 마시기 바랍니다.>
	※ 본 웹 에플리케이션은 MIT LICENSE를 따릅니다.


RAS-POS system 설치

1. OS상관없이 APM부터 우선적으로 설치되어야 합니다.
<APM : Apache, Php, Mysql 구성의 기본 웹서버입니다. 다른 것을 사용해도 무방합니다.>

2. Mysql에 계정과 테이블을 만들어줍니다. 계정은 다음과 같습니다.

	HOSTNAME : LOCALHOST
	ID :	   RASPOS
	PW :	   RASPOSPW
	TABLE :    RASPOS

3. 반드시 동봉된 raspos.sql을 덮어씁니다.

4. Raspberry PI 안에서 사용할 경우 인터넷 익스플로어는 '미도리'를 사용합니다.

5. 웹서버의 root directory에 RAS-POS의 코드를 입력합니다.

6. Raspberry PI 안이나 설치된 PC에 사용할 경우 인터넷 주소는 http://localhost/이고 외부에서 사용할 경우 http://ip주소/입니다.

7. 상품관리, 매상정보를 확인하려면 http://주소/insert.html로 들어갑니다.



RAS-POS system 1.0ver 설치자들은

RASPOS databases의 내용을 수정해주어야 합니다.

기존에 DB의 TABLE은 지워주시고,

만약 수정하실 수 있다면 TABLE을 다음과 같이 수정해 주시기 바랍니다.

---------------------------------------------------------------------------
TABLE price

#  이름        종류         데이터정렬방식
1  date        date                          <====== 추가
2  code        varchar(15)  utf8_general_ci
3  name        text         utf8_general_ci
4  price       int(11)
---------------------------------------------------------------------------
TABLE sold_book

#  이름        종류         데이터정렬방식
1  yearmonth   varchar(8)   utf8_general_ci <====== 추가, 변경
2  sellday     date                         <====== 추가, 변경
3  time        time
4  totalprice  int(10)

**************************      수정사항      *****************************


※ 상품 등록시 아무것도 입력하지 않을 경우'비유효데이터입력시' 경고창이 뜨게 되면서 다음으로 진행할 수 없게 합니다.

※ 상품 등록시 상품등록일자가 입력되어 상품리스트에 나타납니다.

※ 상품검색시 유사 검색어에 대한 검색이 가능하게 되어졌습니다.
<유사 검색어 : 예를 들어 '빠다코코낫'을 검색할 경우 '빠다'라는 글자만 검색해도 '빠다코코낫'이라는 결과를 도출해내는 것.>

※ 매상장부 검색이 '판매년도-판매월'기준으로 변경되었습니다.

※ 매상장부 검색시 년도나 월이 중복되는 문제를 해결하였습니다.


			builded Web-Application by KAERIUS
======================================================================================