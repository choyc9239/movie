/**********************************/
/* Table Name: 영화 */
/**********************************/
CREATE TABLE movie(
		movieno                       		INTEGER(10)		 NOT NULL		 PRIMARY KEY,
		title                         		VARCHAR2(30)		 NOT NULL,
		genre                         		VARCHAR2(30)		 NOT NULL,
		actor                         		VARCHAR2(30)		 NOT NULL,
		open_date                     		DATE		 NOT NULL,
		director                      		INTEGER(10)		 NOT NULL,
		show_time                     		VARCHAR2(30)		 NOT NULL
);

CREATE SEQUENCE movie_movieno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER movie_movieno_TRG
BEFORE INSERT ON movie
FOR EACH ROW
BEGIN
IF :NEW.movieno IS NOT NULL THEN
  SELECT movie_movieno_SEQ.NEXTVAL INTO :NEW.movieno FROM DUAL;
END IF;
END;

COMMENT ON TABLE movie is '영화';
COMMENT ON COLUMN movie.movieno is '영화 번호';
COMMENT ON COLUMN movie.title is '제목';
COMMENT ON COLUMN movie.genre is '장르';
COMMENT ON COLUMN movie.actor is '배우';
COMMENT ON COLUMN movie.open_date is '개봉일';
COMMENT ON COLUMN movie.director is '감독';
COMMENT ON COLUMN movie.show_time is '상영시간';


/**********************************/
/* Table Name: 장르 */
/**********************************/
CREATE TABLE genre(
		genreno                       		INTEGER(10)		 NOT NULL		 PRIMARY KEY,
		genre_name                    		VARCHAR2(100)		 NOT NULL
);

CREATE SEQUENCE genre_genreno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER genre_genreno_TRG
BEFORE INSERT ON genre
FOR EACH ROW
BEGIN
IF :NEW.genreno IS NOT NULL THEN
  SELECT genre_genreno_SEQ.NEXTVAL INTO :NEW.genreno FROM DUAL;
END IF;
END;

COMMENT ON TABLE genre is '장르';
COMMENT ON COLUMN genre.genreno is '장르 번호';
COMMENT ON COLUMN genre.genre_name is '장르명';


/**********************************/
/* Table Name: 회원 */
/**********************************/
CREATE TABLE user(
		userno                        		INTEGER(10)		 NOT NULL		 PRIMARY KEY,
		user_id                       		VARCHAR2(12)		 NOT NULL,
		user_pw                       		VARCHAR2(12)		 NOT NULL,
		age                           		INTEGER(3)		 NOT NULL,
		gender                        		VARCHAR2(1)		 NOT NULL,
		address                       		VARCHAR2(100)		 NOT NULL,
		user_genre                    		VARCHAR2(30)		 NULL ,
		prof                          		VARCHAR2(100)		 NULL ,
		user_in                       		DATE		 NOT NULL,
		user_out                      		DATE		 NULL ,
		pon_nu                        		VARCHAR2(13)		 NOT NULL,
		email                         		VARCHAR2(30)		 NOT NULL
);

CREATE SEQUENCE user_userno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER user_userno_TRG
BEFORE INSERT ON user
FOR EACH ROW
BEGIN
IF :NEW.userno IS NOT NULL THEN
  SELECT user_userno_SEQ.NEXTVAL INTO :NEW.userno FROM DUAL;
END IF;
END;

COMMENT ON TABLE user is '회원';
COMMENT ON COLUMN user.userno is '유저번호';
COMMENT ON COLUMN user.user_id is '유저아이디';
COMMENT ON COLUMN user.user_pw is '유저비번';
COMMENT ON COLUMN user.age is '유저 나이';
COMMENT ON COLUMN user.gender is '유저성별';
COMMENT ON COLUMN user.address is '유저주소';
COMMENT ON COLUMN user.user_genre is '유저관심장르';
COMMENT ON COLUMN user.prof is '유저프로필';
COMMENT ON COLUMN user.user_in is '유저가입 일자';
COMMENT ON COLUMN user.user_out is '유저탈퇴 일자';
COMMENT ON COLUMN user.pon_nu is '유저폰번호';
COMMENT ON COLUMN user.email is '유저이메일';


