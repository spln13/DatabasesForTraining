-- database stu for MySQL
-- Author wyh
-- 说明：打开此.sql文件，执行一次即可建立 database stu

drop database if exists stu;
create database stu;

use stu;

SET names utf8;

drop table if exists c;
create table c
(
    cno varchar(255) not null comment '课程编号',
    cname varchar(255) comment '课程名称',
    pcno varchar(255) comment '先修课',
    primary key(cno)
) engine=InnoDB default charset=utf8;

drop table if exists s;
create table s
(
    sno varchar(255) not null comment '学号',
    sname varchar(255) comment '姓名',
    sage int comment '年龄',
    sex varchar(255) comment '性别',
    sdept varchar(255) comment '所在系',
    primary key(sno)
) engine=InnoDB default charset=utf8;

drop table if exists sc;
create table sc
(
    sno varchar(255) not null comment '学号',
    cno varchar(255) not null comment '课程编号',
    grade int comment '成绩',
    primary key(sno, cno),
    foreign key(cno) references c(cno),
    foreign key(sno) references s(sno)
) engine=InnoDB default charset=utf8;

drop table if exists student;
create table student
(
    Id varchar(255) comment '编号',
    name varchar(255) comment '姓名',
    sex varchar(255) comment '性别',
    phonenum varchar(255) comment '电话',
    check ((sex = 'M' or sex = 'F') 
    and phonenum like '(010)[0-9][0-9][0-9][0-9] [0-9][0-9][0-9][0-9]')
) engine=InnoDB default charset=utf8;

begin;
insert into c(cno, cname, pcno) values ('001', '高数', NULL);
insert into c(cno, cname, pcno) values ('002', '英语', NULL);
insert into c(cno, cname, pcno) values ('003', '辩证法', NULL);
insert into c(cno, cname, pcno) values ('004', '数据库原理', '006');
insert into c(cno, cname, pcno) values ('005', '数据库应用', '004');
insert into c(cno, cname, pcno) values ('006', '离散数学', '001');
insert into s(sno, sname, sage, sex, sdept) values ('95010101', '赵清', 25, '男 ', '计算机');
insert into s(sno, sname, sage, sex, sdept) values ('95010102', '王一', 21, '女 ', '计算机');
insert into s(sno, sname, sage, sex, sdept) values ('95010103', '李美', 21, '男 ', '计算机');
insert into s(sno, sname, sage, sex, sdept) values ('95020101', '张会', 22, '男 ', '化工');
insert into s(sno, sname, sage, sex, sdept) values ('95020102', '好人', 21, '男 ', '化工');
insert into s(sno, sname, sage, sex, sdept) values ('95020103', '会类', 24, '男 ', '化工');
insert into s(sno, sname, sage, sex, sdept) values ('95010201', '人门', 24, '女 ', '计算机');
insert into s(sno, sname, sage, sex, sdept) values ('95010202', '王晓', 23, '女 ', '计算机');
insert into s(sno, sname, sage, sex, sdept) values ('95010203', '李鸿', 25, '女 ', '计算机');
insert into s(sno, sname, sage, sex, sdept) values ('95010204', '打法', 24, '男 ', '计算机');
insert into s(sno, sname, sage, sex, sdept) values ('95010205', '距离', 24, '女 ', '计算机');
insert into sc(sno, cno, grade) values ('95010101', '001', 80);
insert into sc(sno, cno, grade) values ('95010101', '002', 100);
insert into sc(sno, cno, grade) values ('95010101', '003', 80);
insert into sc(sno, cno, grade) values ('95010101', '005', 80);
insert into sc(sno, cno, grade) values ('95010102', '005', 80);
insert into sc(sno, cno, grade) values ('95010102', '004', 56);
insert into sc(sno, cno, grade) values ('95010102', '003', 80);
insert into sc(sno, cno, grade) values ('95010102', '002', 80);
insert into sc(sno, cno, grade) values ('95010102', '001', 82);
insert into sc(sno, cno, grade) values ('95010103', '001', 80);
insert into sc(sno, cno, grade) values ('95010103', '002', 80);
insert into sc(sno, cno, grade) values ('95010103', '003', 80);
insert into sc(sno, cno, grade) values ('95010103', '004', 80);
insert into sc(sno, cno, grade) values ('95010103', '005', 92);
insert into sc(sno, cno, grade) values ('95020103', '005', 80);
insert into sc(sno, cno, grade) values ('95020103', '004', 80);
insert into sc(sno, cno, grade) values ('95020103', '003', 96);
insert into sc(sno, cno, grade) values ('95020103', '002', 80);
insert into sc(sno, cno, grade) values ('95020103', '001', 80);
insert into sc(sno, cno, grade) values ('95020102', '001', 71);
insert into sc(sno, cno, grade) values ('95020102', '002', 80);
insert into sc(sno, cno, grade) values ('95020102', '003', 80);
insert into sc(sno, cno, grade) values ('95020101', '003', 75);
insert into sc(sno, cno, grade) values ('95020101', '002', 80);
insert into sc(sno, cno, grade) values ('95020101', '001', 80);
insert into sc(sno, cno, grade) values ('95020101', '004', 0);
insert into sc(sno, cno, grade) values ('95010201', '004', 80);
insert into sc(sno, cno, grade) values ('95010201', '003', 80);
insert into sc(sno, cno, grade) values ('95010201', '002', 80);
insert into sc(sno, cno, grade) values ('95010201', '001', 54);
insert into sc(sno, cno, grade) values ('95010201', '005', NULL);
insert into sc(sno, cno, grade) values ('95010201', '006', 80);
insert into sc(sno, cno, grade) values ('95010202', '006', 80);
insert into sc(sno, cno, grade) values ('95010202', '005', 43);
insert into sc(sno, cno, grade) values ('95010202', '004', 80);
insert into sc(sno, cno, grade) values ('95010202', '003', 80);
insert into sc(sno, cno, grade) values ('95010202', '002', 80);
insert into sc(sno, cno, grade) values ('95010202', '001', 80);
insert into sc(sno, cno, grade) values ('95010203', '001', 80);
insert into sc(sno, cno, grade) values ('95010203', '002', 80);
insert into sc(sno, cno, grade) values ('95010203', '003', 80);
insert into sc(sno, cno, grade) values ('95010204', '003', 80);
insert into sc(sno, cno, grade) values ('95010204', '002', 80);
insert into sc(sno, cno, grade) values ('95010204', '001', 80);
insert into sc(sno, cno, grade) values ('95010205', '001', 80);
insert into sc(sno, cno, grade) values ('95010205', '002', 80);
insert into sc(sno, cno, grade) values ('95010205', '003', 80);
insert into sc(sno, cno, grade) values ('95010205', '004', 80);
insert into sc(sno, cno, grade) values ('95010205', '005', 80);
insert into sc(sno, cno, grade) values ('95010205', '006', 80);
commit;

/* 查看表头的详细情况，注释等
show full columns from c;
show full columns from s;
show full columns from sc;
show full columns from student;
*/