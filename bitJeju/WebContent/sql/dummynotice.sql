DROP TABLE notice;
DROP sequence notice_seq;
CREATE sequence notice_seq start with 1 increment by 1;
CREATE TABLE notice(
    noticeNum     NUMBER(5)         NOT NULL, 
    title         VARCHAR2(60)      NOT NULL, 
    writer        VARCHAR2(12)      default '비트캠프', 
    writedDate    DATE              DEFAULT SYSDATE, 
    cnt           NUMBER(4)         DEFAULT 1, 
    contents      VARCHAR2(3000)
);
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '1 번째 공지사항입니다', 	TO_DATE('	2020-01-01	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '2 번째 공지사항입니다', 	TO_DATE('	2020-01-02	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '3 번째 공지사항입니다', 	TO_DATE('	2020-01-03	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '4	번째 공지사항입니다', 	TO_DATE('	2020-01-04	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '5	번째 공지사항입니다', 	TO_DATE('	2020-01-05	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '6	번째 공지사항입니다', 	TO_DATE('	2020-01-06	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '7	번째 공지사항입니다', 	TO_DATE('	2020-01-07	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '8	번째 공지사항입니다', 	TO_DATE('	2020-01-08	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '9	번째 공지사항입니다', 	TO_DATE('	2020-01-09	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '10번째 공지사항입니다', 	TO_DATE('	2020-01-10	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '11번째 공지사항입니다', 	TO_DATE('	2020-01-11	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '12번째 공지사항입니다', 	TO_DATE('	2020-01-12	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '13번째 공지사항입니다', 	TO_DATE('	2020-01-13	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '14번째 공지사항입니다', 	TO_DATE('	2020-01-14	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '15번째 공지사항입니다', 	TO_DATE('	2020-01-15	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '16번째 공지사항입니다', 	TO_DATE('	2020-01-16	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '17번째 공지사항입니다', 	TO_DATE('	2020-01-17	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '18번째 공지사항입니다', 	TO_DATE('	2020-01-18	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '19번째 공지사항입니다', 	TO_DATE('	2020-01-19	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '20번째 공지사항입니다', 	TO_DATE('	2020-01-20	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '21번째 공지사항입니다', 	TO_DATE('	2020-01-21	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '22번째 공지사항입니다', 	TO_DATE('	2020-01-22	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '23번째 공지사항입니다', 	TO_DATE('	2020-01-23	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '24번째 공지사항입니다', 	TO_DATE('	2020-01-24	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '25번째 공지사항입니다', 	TO_DATE('	2020-01-25	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '26번째 공지사항입니다', 	TO_DATE('	2020-01-26	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '27번째 공지사항입니다', 	TO_DATE('	2020-01-27	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '28번째 공지사항입니다', 	TO_DATE('	2020-01-28	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '29번째 공지사항입니다', 	TO_DATE('	2020-01-29	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '30번째 공지사항입니다', 	TO_DATE('	2020-01-30	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '31번째 공지사항입니다', 	TO_DATE('	2020-01-31	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '32번째 공지사항입니다', 	TO_DATE('	2020-02-01	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '33번째 공지사항입니다', 	TO_DATE('	2020-02-02	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '34번째 공지사항입니다', 	TO_DATE('	2020-02-03	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '35번째 공지사항입니다', 	TO_DATE('	2020-02-04	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '36번째 공지사항입니다', 	TO_DATE('	2020-02-05	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '37번째 공지사항입니다', 	TO_DATE('	2020-02-06	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '38번째 공지사항입니다', 	TO_DATE('	2020-02-07	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '39번째 공지사항입니다', 	TO_DATE('	2020-02-08	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '40번째 공지사항입니다', 	TO_DATE('	2020-02-09	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '41번째 공지사항입니다', 	TO_DATE('	2020-02-10	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '42번째 공지사항입니다', 	TO_DATE('	2020-02-11	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '43번째 공지사항입니다', 	TO_DATE('	2020-02-12	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '44번째 공지사항입니다', 	TO_DATE('	2020-02-13	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '45번째 공지사항입니다', 	TO_DATE('	2020-02-14	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '46번째 공지사항입니다', 	TO_DATE('	2020-02-15	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '47번째 공지사항입니다', 	TO_DATE('	2020-02-16	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '48번째 공지사항입니다', 	TO_DATE('	2020-02-17	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '49번째 공지사항입니다', 	TO_DATE('	2020-02-18	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '50번째 공지사항입니다', 	TO_DATE('	2020-02-19	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '51번째 공지사항입니다', 	TO_DATE('	2020-02-20	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '52번째 공지사항입니다', 	TO_DATE('	2020-02-21	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '53번째 공지사항입니다', 	TO_DATE('	2020-02-22	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '54번째 공지사항입니다', 	TO_DATE('	2020-02-23	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '55번째 공지사항입니다', 	TO_DATE('	2020-02-24	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '56번째 공지사항입니다', 	TO_DATE('	2020-02-25	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '57번째 공지사항입니다', 	TO_DATE('	2020-02-26	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '58번째 공지사항입니다', 	TO_DATE('	2020-02-27	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '59번째 공지사항입니다', 	TO_DATE('	2020-02-28	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '60번째 공지사항입니다', 	TO_DATE('	2020-02-29	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '61번째 공지사항입니다', 	TO_DATE('	2020-03-01	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '62번째 공지사항입니다', 	TO_DATE('	2020-03-02	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '63번째 공지사항입니다', 	TO_DATE('	2020-03-03	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '64번째 공지사항입니다', 	TO_DATE('	2020-03-04	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '65번째 공지사항입니다', 	TO_DATE('	2020-03-05	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '66번째 공지사항입니다', 	TO_DATE('	2020-03-06	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '67번째 공지사항입니다', 	TO_DATE('	2020-03-07	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '68번째 공지사항입니다', 	TO_DATE('	2020-03-08	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '69번째 공지사항입니다', 	TO_DATE('	2020-03-09	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '70번째 공지사항입니다', 	TO_DATE('	2020-03-10	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '71번째 공지사항입니다', 	TO_DATE('	2020-03-11	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '72번째 공지사항입니다', 	TO_DATE('	2020-03-12	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '73번째 공지사항입니다', 	TO_DATE('	2020-03-13	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '74번째 공지사항입니다', 	TO_DATE('	2020-03-14	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '75번째 공지사항입니다', 	TO_DATE('	2020-03-15	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '76번째 공지사항입니다', 	TO_DATE('	2020-03-16	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '77번째 공지사항입니다', 	TO_DATE('	2020-03-17	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '78번째 공지사항입니다', 	TO_DATE('	2020-03-18	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '79번째 공지사항입니다', 	TO_DATE('	2020-03-19	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '80번째 공지사항입니다', 	TO_DATE('	2020-03-20	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '81번째 공지사항입니다', 	TO_DATE('	2020-03-21	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '82번째 공지사항입니다', 	TO_DATE('	2020-03-22	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '83번째 공지사항입니다', 	TO_DATE('	2020-03-23	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '84번째 공지사항입니다', 	TO_DATE('	2020-03-24	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '85번째 공지사항입니다', 	TO_DATE('	2020-03-25	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '86번째 공지사항입니다', 	TO_DATE('	2020-03-26	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '87번째 공지사항입니다', 	TO_DATE('	2020-03-27	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '88번째 공지사항입니다', 	TO_DATE('	2020-03-28	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '89번째 공지사항입니다', 	TO_DATE('	2020-03-29	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '90번째 공지사항입니다', 	TO_DATE('	2020-03-30	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '91번째 공지사항입니다', 	TO_DATE('	2020-03-31	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '92번째 공지사항입니다', 	TO_DATE('	2020-04-01	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '93번째 공지사항입니다', 	TO_DATE('	2020-04-02	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '94번째 공지사항입니다', 	TO_DATE('	2020-04-03	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '95번째 공지사항입니다', 	TO_DATE('	2020-04-04	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '96번째 공지사항입니다', 	TO_DATE('	2020-04-05	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '97번째 공지사항입니다', 	TO_DATE('	2020-04-06	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '98번째 공지사항입니다', 	TO_DATE('	2020-04-07	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '99번째 공지사항입니다', 	TO_DATE('	2020-04-08	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');
insert into notice (noticeNum,title,writedDate,cnt,contents) values 	(notice_seq.nextval, '100번째 공지사항입니다', 	TO_DATE('	2020-04-09	 ', 'RRRR-MM-DD'), 	10, '안녕하세요. 공지하겠습니다~~^~^乃');

select * from notice;
commit

--update notice set cnt=cnt+1 where noticeNum=1;
--select * from notice where noticeNum = 1;
--select * from notice where noticeNum = 1;