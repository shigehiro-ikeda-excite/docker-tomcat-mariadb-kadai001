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
  values('030011', 'shigehiro.ikeda@excite-software.co.jp', '池田', '林央', 'イケダ', 'シゲヒロ', '1976-02-24', '2003-11-01', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('070036', 'yuta.tsushima@excite-software.co.jp', '對馬', '裕太', 'ツシマ', 'ユウタ', '1984-08-09', '2007-04-01', 'INIT');
insert into TRN_EMPLOYEES (EMPLOYEE_NUMBER, MAIL_ADDRESS, FAMILY_NAME, GIVEN_NAME, FAMILY_NAME_KANA, GIVEN_NAME_KANA, BIRTHDATE, JOINING_DATE, CREATE_USER)
  values('160005', 'yoko.myonai@excite-software.co.jp', '明内', '陽幸', 'ミョウナイ', 'ヨウコウ', '1982-07-09', '2016-04-01', 'INIT');

-- 従業員-役職紐付け
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='池田'), 1 );
insert into TRN_EMPLOYEE_POSITIONS ( EMPLOYEE_ID, POSITION_ID ) values( (select ID from TRN_EMPLOYEES where FAMILY_NAME='對馬'), 4 );
