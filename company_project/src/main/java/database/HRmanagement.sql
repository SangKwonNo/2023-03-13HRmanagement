create database hrmanagement;
USE hrmanagement;

create table department ( -- 부서
	num int  auto_increment  PRIMARY key,
    de_code int, -- 부서코드
    de_name varchar(30) unique key -- 부서명
);

create table companyrank ( -- 직급
	num int auto_increment PRIMARY key,
    rn_code int, -- 직급코드
	rn_name varchar(20) unique key, -- 직급명
    basic_salary int -- 직급기본급여
);

create table job ( -- 직무
	num int auto_increment PRIMARY key,
    job_code int, -- 직무코드
	work varchar(30) -- 직무명
);
ALTER TABLE job ADD INDEX idx_job_work (work);

CREATE TABLE employee( -- 사원
	num int auto_increment PRIMARY key,

	name VARCHAR(21), -- 이름
    birth DATE, -- 생일
    gender varchar(5), -- 성별
	addr VARCHAR(50), -- 주소
    phone VARCHAR(13), -- 연락처
    email VARCHAR(30), -- 이메일
	id VARCHAR(20) NOT null unique key, -- 아이디
    pw varchar(20), -- 비밀번호
    
    em_num int NOT null unique key,  -- 사내번호
    em_de_name varchar(30), -- 부서명
    FOREIGN key (em_de_name) REFERENCES department(de_name),
    em_rn_name varchar(20), -- 직급명
    FOREIGN key (em_rn_name) REFERENCES companyrank(rn_name),
    em_job_name varchar(30), -- 직무
    FOREIGN key (em_job_name) REFERENCES job(work),
    em_entry DATE, -- 입사일
        
	va_total int, -- 총 휴가
    va_use int -- 사용 휴가
);



create table attendance ( -- 근태관련
	num int auto_increment PRIMARY key,
	em_num int NOT null,
	check_in DATETIME NOT null,
    check_out DATETIME NOT null,
    late int, -- 지각
    early_leave int, -- 반차
    vacation int, -- 휴가
    memo varchar(50),
    FOREIGN key (em_num) REFERENCES employee(em_num)
);

create table salary_info ( -- 급여관련
	num int auto_increment PRIMARY key,
	em_num int NOT null,
    basic_salary int NOT null, -- 기본급
    FOREIGN key (basic_salary) REFERENCES companyrank(basic_salary),
    bonus int NOT null, -- 보너스
    allowance int NOT null, -- 수당
	FOREIGN key (em_num) REFERENCES employee(em_num)
);
ALTER TABLE companyrank ADD INDEX (basic_salary);

CREATE TABLE vacation( -- 휴가관련
	num int auto_increment PRIMARY key,
	em_num int NOT null,
    vacation_type varchar(10) NOT null, -- 휴가종류
    vac_start date Not null, -- 휴가시작일
    vac_end date Not null, -- 휴가완료일
    memo varchar(100), -- 사유
	FOREIGN key (em_num) REFERENCES employee(em_num)
);

CREATE TABLE board_01( -- 게시판종류 기본 베이스
	num int auto_increment PRIMARY key,
    type varchar(10), -- 회사, 팀, 개인 등 분류
	writer varchar(20), -- 작성자
	subject varchar(50), -- 글제목
	contents varchar(255), -- 글내용
	regDate varchar(10) -- 글작성일
);


