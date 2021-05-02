USE excite_study;

SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

-- 役職マスタ
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('リーダー', 1, 'INIT');
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('チーフコンサルタント', 2, 'INIT');
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('シニアエキスパート', 3, 'INIT');
insert into MST_POSITIONS (NAME, DISPLAY_ORDER, CREATE_USER) values('サブリーダー', 4, 'INIT');

-- 従業員
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('030011', 's.i@excite-software.co.jp', '池◯', '林◯', 'イケ◯', 'シゲ◯◯', '1976-02-24', '2003-11-01', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('070036', 'y.t@excite-software.co.jp', '◯馬', '◯太', '◯◯マ', '◯◯タ', '1984-08-09', '2007-04-01', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('160005', 'y.m@excite-software.co.jp', '◯内', '◯幸', '◯◯ナイ', '◯◯コウ', '1982-07-09', '2016-04-01', 'INIT');

-- 従業員-役職紐付け
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='池◯'), 1 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='◯馬'), 4 );
