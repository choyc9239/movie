/**********************************/
/* Table Name: ��ȭ */
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

COMMENT ON TABLE movie is '��ȭ';
COMMENT ON COLUMN movie.movieno is '��ȭ ��ȣ';
COMMENT ON COLUMN movie.title is '����';
COMMENT ON COLUMN movie.genre is '�帣';
COMMENT ON COLUMN movie.actor is '���';
COMMENT ON COLUMN movie.open_date is '������';
COMMENT ON COLUMN movie.director is '����';
COMMENT ON COLUMN movie.show_time is '�󿵽ð�';


/**********************************/
/* Table Name: �帣 */
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

COMMENT ON TABLE genre is '�帣';
COMMENT ON COLUMN genre.genreno is '�帣 ��ȣ';
COMMENT ON COLUMN genre.genre_name is '�帣��';


/**********************************/
/* Table Name: ȸ�� */
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

COMMENT ON TABLE user is 'ȸ��';
COMMENT ON COLUMN user.userno is '������ȣ';
COMMENT ON COLUMN user.user_id is '�������̵�';
COMMENT ON COLUMN user.user_pw is '�������';
COMMENT ON COLUMN user.age is '���� ����';
COMMENT ON COLUMN user.gender is '��������';
COMMENT ON COLUMN user.address is '�����ּ�';
COMMENT ON COLUMN user.user_genre is '���������帣';
COMMENT ON COLUMN user.prof is '����������';
COMMENT ON COLUMN user.user_in is '�������� ����';
COMMENT ON COLUMN user.user_out is '����Ż�� ����';
COMMENT ON COLUMN user.pon_nu is '��������ȣ';
COMMENT ON COLUMN user.email is '�����̸���';


