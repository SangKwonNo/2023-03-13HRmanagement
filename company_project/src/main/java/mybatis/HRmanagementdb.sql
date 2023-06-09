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


drop table attendance;
create table attendance ( -- 근태관련
	num int auto_increment PRIMARY key,
	em_num int NOT null,
	check_in varchar(20),
    check_out varchar(20),
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

CREATE TABLE calendar( -- 캘린더
	num int auto_increment PRIMARY key,
	title varchar(20),
    start varchar(20),
    end varchar(20)
);
INSERT INTO department (de_code, de_name) VALUES
(101, '인사부'),
(201, '영업부'),
(301, '개발부'),
(401, '디자인부'),
(501, '재무부'),
(601, '마케팅부');

INSERT INTO companyrank (rn_code, rn_name, basic_salary) VALUES
(100, '사원', 2000000),
(200, '대리', 2500000),
(300, '과장', 3000000),
(400, '차장', 3500000),
(500, '부장', 4000000);
    
INSERT INTO job (job_code, work) VALUES
(101, '채용관리'),
(102, '채용사원'),
(201, '영업관리'),
(202, '영업사원'),
(301, '시스템관리'),
(302, '네트워크관리'),
(401, '디자이너'),
(601, '마케터'),
(501, '재무담당');

INSERT INTO employee (name, birth, gender, addr, phone, email, id, pw, em_num, em_de_name, em_rn_name, em_job_name, em_entry, va_total, va_use) VALUES
('노상권', '1998-05-15', '남', '경기도 시흥시', '010-3176-9334', 'yhlo000@naver.com', 'admin', 'admin', 1004, '개발부', '과장', '시스템관리', '2020-03-21', 24, 7),
('김영희', '1990-01-01', '여', '서울시 강남구', '010-1234-5678', 'kim@example.com', 'kim_yh', '1234', 1501, '영업부', '대리', '영업관리', '2020-01-01', 15, 7),
('이철수', '1991-02-01', '남', '서울시 서초구', '010-2345-6789', 'lee@example.com', 'lee_cs', '1234', 1202, '인사부', '대리', '채용관리', '2021-03-15', 20, 10),
('박민수', '1988-03-01', '남', '경기도 수원시', '010-3456-7890', 'park@example.com', 'park_ms', '1234', 3403, '영업부', '과장', '영업관리', '2018-05-01', 25, 15),
('송예진', '1992-04-01', '여', '경기도 부천시', '010-4567-8901', 'song@example.com', 'song_yj', '1234', 1204, '인사부', '사원', '채용사원', '2019-07-01', 30, 5),
('박준영', '1990-05-01', '남', '서울시 송파구', '010-5678-9012', 'parkjy@example.com', 'park_jy', '1234', 6305, '개발부', '대리', '시스템관리', '2018-01-01', 10, 5),
('이수현', '1991-06-01', '여', '서울시 중구', '010-6789-0123', 'lee@example.com', 'lee_sh', '1234', 3606, '개발부', '사원', '네트워크관리', '2020-02-01', 15, 10),
('홍길동', '1992-07-01', '남', '서울시 종로구', '010-7890-1234', 'hong@example.com', 'hong_gd', '1234', 1707, '영업부', '과장', '영업관리', '2017-03-01', 20, 5),
('김영수', '1992-05-20', '남', '서울시 강남구', '010-1111-2222', 'kimys@company.com', 'kimys', '1234', '4508', '인사부', '부장', '채용관리', '2020-01-01', 15, 5),
('박지영', '1995-02-12', '여', '서울시 서초구', '010-2222-3333', 'parkjy@company.com', 'parkjy', '1234', '7209', '영업부', '대리', '영업사원', '2021-03-01', 15, 2),
('홍길동', '1980-10-01', '남', '서울시 강서구', '010-3333-4444', 'honggd@company.com', 'honggd', '1234', '7410', '인사부', '사원', '채용사원', '2022-01-01', 15, 0),
('이지은', '1988-07-30', '여', '서울시 강남구', '010-4444-5555', 'leeje@company.com', 'leeje', '1234', '1211', '마케팅부', '대리', '마케터', '2021-04-01', 15, 3),
('신동욱', '1993-03-15', '남', '서울시 관악구', '010-5555-6666', 'sindw@company.com', 'sindw', '1234', '6412', '영업부', '사원', '영업사원', '2022-03-01', 15, 1),
('장미경', '1985-09-20', '여', '서울시 종로구', '010-6666-7777', 'jangmk@company.com', 'jangmk', '1234', '1313', '개발부', '과장', '시스템관리', '2020-07-01', 15, 8),
('홍길동', '1982-06-02', '남', '서울시 용산구', '010-7777-8888', 'honggd2@company.com', 'honggd2', '1234', '9714', '디자인부', '과장', '디자이너', '2021-12-01', 15, 0),
('김재현', '1990-04-13', '남', '서울시 성북구', '010-8888-9999', 'kimjh@company.com', 'kimjh', '1234', '8615', '개발부', '대리', '네트워크관리', '2020-06-04', 15, 4);

INSERT INTO calendar (title, start, end)
VALUES
    ('Meeting', '2023-03-16 10:00:00', '2023-03-16 11:00:00'),
    ('Interview', '2023-03-18 14:00:00', '2023-03-18 15:30:00'),
    ('Lunch with client', '2023-03-20 12:00:00', '2023-03-20 13:00:00'),
    ('Team building', '2023-03-21 09:00:00', '2023-03-21 17:00:00'),
    ('Product launch', '2023-03-23 15:00:00', '2023-03-23 17:00:00');
   
   desc attendance;
   select * from attendance;

 INSERT INTO attendance (em_num, check_in, check_out, late, early_leave, vacation, memo)
VALUES
(1004, '2023-03-01 09:00:00', '2023-03-01 18:00:00', 0, 0, 0, '정상출근'),
(1004, '2023-03-02 09:15:00', '2023-03-02 18:15:00', 1, 0, 0, '10분 지각'),
(1004, '2023-03-03 08:50:00', '2023-03-03 18:00:00', 0, 0, 1, '휴가'),
(1004, '2023-03-04 09:00:00', '2023-03-04 17:30:00', 0, 1, 0, '조퇴'),
(1004, '2023-03-05 09:10:00', '2023-03-05 18:00:00', 1, 0, 0, '10분 지각'),
(1004, '2023-03-06 09:00:00', '2023-03-06 18:30:00', 0, 0, 0, '정상출근'),
(1004, '2023-03-07 09:20:00', '2023-03-07 18:10:00', 1, 0, 0, '10분 지각'),
(1501, '2023-03-08 08:50:00', '2023-03-08 18:00:00', 0, 0, 1, '휴가'),
(1501, '2023-03-09 09:00:00', '2023-03-09 17:30:00', 0, 1, 0, '조퇴'),
(1501, '2023-03-10 09:10:00', '2023-03-10 18:00:00', 1, 0, 0, '10분 지각'),
(1501, '2023-03-11 09:00:00', '2023-03-11 18:30:00', 0, 0, 0, '정상출근'),
(1501, '2023-03-12 09:20:00', '2023-03-12 18:10:00', 1, 0, 0, '10분 지각'),
(1501, '2023-03-13 08:50:00', '2023-03-13 18:00:00', 0, 0, 1, '휴가'),
(1501, '2023-03-14 09:00:00', '2023-03-14 17:30:00', 0, 1, 0, '조퇴'),
(1501, '2023-03-15 09:10:00', '2023-03-15 18:00:00', 1, 0, 0, '10분 지각'),
(1501, '2023-03-16 09:00:00', '2023-03-16 18:30:00', 0, 0, 0, '정상출근'),
(1501, '2023-03-17 09:20:00', '2023-03-17 18:10:00', 1, 0, 0, '10분 지각'),
(1501, '2023-03-18 08:50:00', '2023-03-18 18:00:00', 0, 0, 1, '휴가'),
(1501, '2023-03-19 09:00:00', '2023-03-19 17:30:00', 0, 1, 0, '조퇴'),
(1501, '2023-03-20 09:10:00', '2023-03-20 18:00:00', 1, 0, 0, '10분 지각'); 
    
    
    
    


