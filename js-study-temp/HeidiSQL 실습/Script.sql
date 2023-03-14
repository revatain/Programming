-- 전체 데이터 확인
SELECT *
FROM EMPLOYEES e;

-- 조건 확인
SELECT *
FROM EMPLOYEES e
WHERE EMPLOYEE_ID < 110;

-- 데이터 정렬
SELECT *
FROM EMPLOYEES e
WHERE EMPLOYEE_ID < 110
ORDER BY FIRST_NAME DESC;

-- 데이터 그룹화
SELECT DEPARTMENT_ID, SUM(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- 데이터 그룹화 + 조건
-- 그룹함수 count, max, min, sum 등등
SELECT DEPARTMENT_ID, SUM(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY) > 100000;


-- 중복데이터 제거
SELECT DISTINCT JOB_ID 
FROM EMPLOYEES e ;

-- 파일 출력
-- 직원 이름 / 월급 뽑아주세요
SELECT FIRST_NAME AS "직원 이름", SALARY AS 월급
FROM EMPLOYEES e ;

-- 숫자표현
-- dual은 테스트용 가상 테이블이다.
SELECT 1
FROM dual;

-- 문자표현
SELECT '안녕하세요'
FROM dual;

-- 비교 연산자
-- sql에서는 ==이 아니라 =을 사용한다
SELECT *
FROM EMPLOYEES e
WHERE FIRST_NAME = 'Steven';

-- 연결 연산자
SELECT EMPLOYEE_ID , FIRST_NAME || ' ' || LAST_NAME 
FROM EMPLOYEES e ;

-- @test.com
SELECT EMAIL || '@test.com'
FROM EMPLOYEES e ;

-- select문 계산
-- 10% 보너스
SELECT FIRST_NAME ,SALARY, SALARY * 0.1 AS 보너스
FROM EMPLOYEES e ;

-- where 조건
-- = <= != BETWEEN , IN, LIKE , IS NULL

-- = <= != BETWEEN
-- 110~115번 직원을 출력하세요.
SELECT *
FROM EMPLOYEES e 
WHERE EMPLOYEE_ID >= 110
	AND EMPLOYEE_ID <= 115;

SELECT *
FROM EMPLOYEES e 
WHERE EMPLOYEE_ID BETWEEN 110 AND 115;

-- IN
-- 110, 115, 117 번 뽑아줘
SELECT *
FROM EMPLOYEES e
WHERE EMPLOYEE_ID = 110
	OR EMPLOYEE_ID = 115
	OR EMPLOYEE_ID = 117;

SELECT *
FROM EMPLOYEES e
WHERE EMPLOYEE_ID IN (110, 115, 117);

-- LIKE
-- 문자열 비교시 많이 사용함
SELECT *
FROM EMPLOYEES e
WHERE FIRST_NAME LIKE 'Steven';

-- % 문자열 일부 검색
SELECT *
FROM EMPLOYEES e
WHERE FIRST_NAME LIKE 'S%';

-- =으로 문자열 조건 검색 안됨
SELECT *
FROM EMPLOYEES e
WHERE FIRST_NAME = 'S%';

SELECT *
FROM EMPLOYEES e
WHERE FIRST_NAME LIKE '%e%';

SELECT *
FROM EMPLOYEES e
WHERE FIRST_NAME LIKE '%te';

-- null 처리
SELECT FIRST_NAME, COMMISSION_PCT 
FROM EMPLOYEES e
WHERE COMMISSION_PCT IS NOT NULL;

-- employees 테이블에서 
-- salary가 4000을 초과하면서(AND), 
-- job_id가 IT_PROG인 값을 조회하세요.
SELECT *
FROM EMPLOYEES e 
WHERE SALARY > 4000 
	AND JOB_ID LIKE 'IT_PROG';

-- NOT
SELECT *
FROM EMPLOYEES e 
WHERE EMPLOYEE_ID <> 100;

SELECT *
FROM EMPLOYEES e 
WHERE NOT EMPLOYEE_ID = 100;

SELECT *
FROM EMPLOYEES e 
WHERE EMPLOYEE_ID NOT BETWEEN 110 AND 115;

SELECT *
FROM EMPLOYEES e
WHERE EMPLOYEE_ID NOT IN (110, 115, 117);

-- 함수
-- SELECT , WHERE , ORDER BY / 그룹함수 HAVING
-- 대문자를 소문자로
SELECT LOWER('ABCD') 
FROM dual;
-- 소문자를 대문자로
SELECT UPPER('abcd')
FROM dual;
-- 첫글자만 대문자로
SELECT INITCAP('abcd')
FROM dual;
-- 문자열 일부 가져오기
-- 1번째 문자부터 1개 가져오기
-- sql에서는 첫번째 인덱스가 1이다
SELECT SUBSTR('abc', 1, 1)
FROM dual;
-- 문자바꾸기
SELECT REPLACE('abcd', 'a', 'e')
FROM dual;
-- 문자 더하기
SELECT CONCAT('a','b'), 'a' || 'b'
FROM dual;
-- 문자 길이 구하기
SELECT LENGTH('asdf')
FROM dual;
-- 문자 채우기
SELECT LPAD('a', 5, '*')
FROM dual;
SELECT RPAD('a', 5, '*')
FROM dual;

-- 숫자 함수
-- 반올림
SELECT ROUND(12.521, 0)
FROM dual;
-- 절삭 (내림)
SELECT TRUNC(12.521,0)
FROM dual;
-- 나머지
SELECT MOD(11, 5)
FROM dual;
-- 정수 올림
SELECT CEIL(12.4)
FROM dual;
-- 정수 내림
SELECT FLOOR(12.5)
FROM dual;
-- 제곱
SELECT POWER(2,3)
FROM dual;
-- 제곱근
SELECT SQRT(4)
FROM dual;
-- 양수1 음수-1 0 확인
SELECT SIGN(0)
FROM dual;

-- 날짜
SELECT FIRST_NAME, HIRE_DATE 
FROM EMPLOYEES e
WHERE HIRE_DATE < '2003-01-01';
-- to_char
SELECT FIRST_NAME, HIRE_DATE 
FROM EMPLOYEES e
WHERE TO_CHAR(HIRE_DATE, 'YYYY-MM-DD')  < '2003-01-01';
-- 날짜 더하기
SELECT FIRST_NAME , HIRE_DATE , HIRE_DATE + 1
FROM EMPLOYEES e ;
-- 시간 더하기
SELECT FIRST_NAME , HIRE_DATE , HIRE_DATE + 1 / 24
FROM EMPLOYEES e ;
-- 날짜 간격 구하기
SELECT FIRST_NAME , HIRE_DATE , HIRE_DATE - TO_DATE('2000-01-01') 
FROM EMPLOYEES e ;
-- 컴퓨터 날짜 구하기
SELECT SYSDATE
FROM dual;
-- 3시

-- 개월수 계산
SELECT MONTHS_BETWEEN(SYSDATE, HIRE_DATE) 
FROM EMPLOYEES e ;
-- 달 추가
SELECT HIRE_DATE, ADD_MONTHS(HIRE_DATE, 6)
FROM EMPLOYEES e ;
-- 마지막 날
SELECT HIRE_DATE, LAST_DAY(HIRE_DATE) 
FROM EMPLOYEES e ;
-- 다음 요일 날짜
SELECT NEXT_DAY(SYSDATE, '수요일')
FROM dual;
-- 날짜 반올림 절삭 실습
-- 날짜 -> 문자
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD')  
FROM dual;
-- 문자 -> 숫자
SELECT 1 + TO_NUMBER('3')
FROM dual;
-- 시간
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24-MI-SS')
FROM dual;
SELECT TO_CHAR(SYSDATE, 'YYYY') || '년'
FROM dual;

-- null 처리 함수
SELECT EMPLOYEE_ID, NVL(COMMISSION_PCT, 0) 
FROM EMPLOYEES e ;

-- 조건 처리 (if와 비슷)
-- 동등조건 처리 가능 /  > < 이런 것 안됨
SELECT DECODE(COMMISSION_PCT, NULL, 0, COMMISSION_PCT) 
FROM EMPLOYEES e ;

-- 조건 처리 (case와 비슷)
SELECT 
	CASE 
		WHEN COMMISSION_PCT IS NULL 
			THEN 0 
		WHEN COMMISSION_PCT < 0.2
			THEN 1
		ELSE COMMISSION_PCT 
	END AS c_pct
FROM EMPLOYEES e;

-- 순위 매기기
-- 점수가 같을 때 2위가 2명일때 다음 순위를 4위
SELECT FIRST_NAME, 
		SALARY,
		RANK() OVER(ORDER BY SALARY DESC)
FROM EMPLOYEES e ;
-- 점수가 같을 때 2위가 2명일때 다음 순위를 3위
SELECT FIRST_NAME, 
		SALARY,
		DENSE_RANK() OVER(ORDER BY SALARY DESC)
FROM EMPLOYEES e ;
-- 순위 같아도 숫자 넘김
SELECT FIRST_NAME, 
		SALARY,
		ROW_NUMBER() OVER(ORDER BY SALARY DESC)
FROM EMPLOYEES e ;

-- 그룹함수
-- 숫자세기
SELECT count(DEPARTMENT_ID)
FROM EMPLOYEES e
GROUP BY DEPARTMENT_ID ;

-- 월급이 5000 달러 이상인 사람 숫자 구하기
SELECT COUNT(*) 
FROM EMPLOYEES e
WHERE SALARY >= 5000;

-- 회사 월급 평균
SELECT FLOOR(AVG(SALARY))  
FROM EMPLOYEES e ;

-- employees 테이블에서 employee_id가 10 이상인 직원에 대해 
-- job_id별로 그룹화하여 job_id별 총 급여와 
-- job_id별 평균 급여를 구하고, 
-- job_id별 총 급여를 기준으로 내림차순 정렬하세요.
-- + 총 급여가 3만 이상인 직업만 출력
SELECT JOB_ID, SUM(SALARY) 총급여, AVG(SALARY) AS "평균 급여" 
FROM EMPLOYEES e
WHERE EMPLOYEE_ID >= 10
GROUP BY JOB_ID
HAVING SUM(SALARY) > 30000
ORDER BY 총급여 DESC;

-- 조인
-- 카티션 곱 where절에 조건을 주지 않은 조인
SELECT *
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 직원이름이랑 부서 보여주세요.
SELECT FIRST_NAME , DEPARTMENT_ID 
FROM EMPLOYEES e ;

-- 오라클 inner join / 동등 조인
SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID;
-- ansi inner join
SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e 
	INNER JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;


-- 오라클 outer join
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME 
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID(+);

-- ansi outer join
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME 
FROM EMPLOYEES e LEFT OUTER JOIN DEPARTMENTS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- self join 
SELECT emp.FIRST_NAME 직원 , ma.FIRST_NAME 매니저
FROM EMPLOYEES emp 
	INNER JOIN EMPLOYEES ma
	ON emp.MANAGER_ID = ma.EMPLOYEE_ID;

-- 서브쿼리
-- SELECT 서브쿼리 = 스칼라 서브쿼리
-- from 서브쿼리 = 인라인뷰 서브쿼리
-- WHERE 서브쿼리 = 서브쿼리

-- employees 테이블의 last_name이 
--‘De Haan’인 직원과 salary가 동일한 직원에는 
-- 누가 있는지 단일 행 서브쿼리를 이용해서 출력해 보세요

-- 서브쿼리를 이용한 쿼리를 작성할 때는
-- 서브쿼리부터 작성하자
-- 단일행 서브쿼리
SELECT SALARY 
FROM EMPLOYEES e 
WHERE LAST_NAME = 'De Haan';


SELECT LAST_NAME , SALARY 
FROM EMPLOYEES e
WHERE SALARY = 
	(SELECT SALARY 
	FROM EMPLOYEES
	WHERE LAST_NAME = 'De Haan');

-- 다중 행 서브쿼리 
-- 행이 여러개 나온다
-- in절

-- employees 테이블에서 department_id별로 
-- 가장 낮은 salary가 얼마인지 찾아보고, 
-- 찾아낸 salary에 해당하는 직원이 누구인지 
-- 다중 행 서브쿼리를 이용해 찾아보세요.
-- 서브쿼리
SELECT MIN(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID; 
-- 본 쿼리
SELECT FIRST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY IN 
	(SELECT MIN(SALARY)
	FROM EMPLOYEES
	GROUP BY DEPARTMENT_ID);

-- 다중 열 서브쿼리 따로 공부

-- 인라인뷰 서브쿼리
-- 직원 중에서 department_name이 
-- IT인 직원의 정보를 
-- 인라인 뷰를 이용해 출력해 보세요.

-- 서브쿼리 - department
SELECT DEPARTMENT_ID 
FROM DEPARTMENTS
WHERE DEPARTMENT_NAME = 'IT';
-- 본쿼리 - emp
SELECT *
FROM EMPLOYEES e
	INNER JOIN (SELECT DEPARTMENT_ID 
				FROM DEPARTMENTS
				WHERE DEPARTMENT_NAME = 'IT') d
	ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

SELECT *
FROM EMPLOYEES
WHERE SALARY > 10000;

-- 랭킹 매긴 후 다시 테이블로 가져와서 가공할 경우 등
SELECT *
FROM (SELECT *
	FROM EMPLOYEES
	WHERE SALARY > 10000)
	
	
-- 스칼라 서브쿼리
SELECT FIRST_NAME, 
	(SELECT DEPARTMENT_NAME 
	FROM DEPARTMENTS d 
	WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID 
	)
FROM EMPLOYEES e;
	











-- INSERT UPDATE DELETE
-- create alter
-- grant

-- ddl dml 역할 차이
-- 트랜잭션 commit rollback
-- 제약조건 








































