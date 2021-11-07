-- database work for MySQL
-- Author wyh
-- 说明：打开此.sql文件，执行一次即可建立 database work

drop database if exists work;
create database work;

use work;

SET names utf8;

drop table if exists dept;
create table dept
(
    deptno varchar(255) not null comment '部门编号',
    dname varchar(255) comment '部门名称',
    city varchar(255) comment '城市',
    primary key(deptno)
) engine=InnoDB default charset=utf8;

drop table if exists emp;
create table emp
(
    empno varchar(255) not null comment '职工编号',
    ename varchar(255) comment '职工姓名',
    mgr varchar(255) comment '上级主管',
    job varchar(255) comment '工种',
    hiredate datetime comment '入职日期',
    comm int comment '销售业绩',
    sal int comment '薪资',
    deptno varchar(255) comment '所属部门',
    primary key(empno),
    foreign key(deptno) references dept(deptno)
) engine=InnoDB default charset=utf8;

drop table if exists salgrade;
create table salgrade
(
    grade varchar(255) not null comment '薪资等级',
    losal int comment '最低薪资',
    hisal int comment '最高薪资',
    primary key(grade)
) engine=InnoDB default charset=utf8;

begin;
insert into dept (deptno, dname, city) 
values ('10', 'ACCOUNTING', 'NEW YORK');
insert into dept (deptno, dname, city) 
values ('20', 'RESEARCH', 'DALLAS');
insert into dept (deptno, dname, city) 
values ('30', 'SALES ', 'CHCAGO');
insert into dept (deptno, dname, city) 
values ('40', 'OPERATIONS', 'BOSTON');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7369', 'SMITH ', '7902', 'CLERK ', '1980-11-17 00:00:00', NULL, 800, '20');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7499', 'ALLEN ', '7698', 'SALESMAN', '1981-02-20 00:00:00', 500, 1600, '30');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7521', 'WORD', '7698', 'SALESMAN', '1981-02-22 00:00:00', 500, 1250, '30');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7566', 'JONES ', '7839', 'MANAGER ', '1981-04-02 00:00:00', NULL, 2975, '20');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7654', 'MARTIN', '7698', 'SALESMAN', '1981-09-28 00:00:00', 1400, 1250, '30');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7698', 'BLACK ', '7839', 'MANAGER ', '1981-05-01 00:00:00', NULL, 1850, '30');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7782', 'CLARK ', '7839', 'MANAGER ', '1981-06-09 00:00:00', NULL, 2450, '10');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7788', 'SCOTT ', '7566', 'ANALYST ', '1981-12-09 00:00:00', NULL, 3000, '20');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7839', 'KING', NULL, 'PRESIDENT ', '1981-12-17 00:00:00', NULL, 5000, '10');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7844', 'TURNER', '7698', 'SALESMAN', '1981-09-08 00:00:00', 0, 1500, '30');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7876', 'ADAMS ', '7788', 'CLERK ', '1981-09-23 00:00:00', NULL, 1100, '20');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7900', 'JAMES ', '7698', 'CLERK ', '1981-11-03 00:00:00', NULL, 950, '30');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7902', 'FORD', '7566', 'ANALYST ', '1981-11-03 00:00:00', NULL, 3000, '20');
insert into emp (empno, ename, mgr, job, hiredate, comm, sal, deptno) 
values ('7934', 'MILLER', '7788', 'CLERK ', '1982-01-23 00:00:00', NULL, 1300, '10');
insert into salgrade (grade, losal, hisal) 
values ('1', 700, 1200);
insert into salgrade (grade, losal, hisal) 
values ('2', 1201, 1400);
insert into salgrade (grade, losal, hisal) 
values ('4', 2001, 3000);
insert into salgrade (grade, losal, hisal) 
values ('5', 3001, 9999);
insert into salgrade (grade, losal, hisal) 
values ('3', 1401, 2000);
commit;

/* 查看表头的详细情况，注释等
show full columns from dept;
show full columns from emp;
show full columns from salgrade;
*/