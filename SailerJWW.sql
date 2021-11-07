-- insert data sailboats for MySQL
-- Author wyh
-- 说明：打开此.sql文件，执行一次即可将数据插入已经建好的 sailboats 数据库中
use sailboats;
set names utf8;

insert into sailors
values('22','Dustin',7,45);
insert into sailors
values('29','Brutus',1,33);
insert into sailors
values('31','Lubber',8,55);
insert into sailors
values('32','Andy',8,25);
insert into sailors
values('58','Rusty',10,35);
insert into sailors
values('64','Horatio',7,35);
insert into sailors
values('71','Zorba',10,16);
insert into sailors
values('74','Jeff',9,35);
insert into sailors
values('85','Art',3,25);
insert into sailors
values('95','Bob',3,63);
insert into boats
values('101','Interlake','Blue');
insert into boats
values('102','Interlake','Red');
insert into boats
values('103','Clipper','Green');
insert into boats
values('104','Marine','Red');
insert into reserves
values('22','101','1998-10-10');
insert into reserves
values('22','102','1998-10-10');
insert into reserves
values('22','103','1998-10-8');
insert into reserves
values('22','104','1998-10-7');
insert into reserves
values('31','102','1998-11-10');
insert into reserves
values('31','103','1998-11-6');
insert into reserves
values('31','104','1998-11-12');
insert into reserves
values('64','101','1998-9-5');
insert into reserves
values('64','102','1998-9-5');
insert into reserves
values('74','103','1998-9-8');