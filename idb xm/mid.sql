                                                //1no ans

create table innaya(
    eid number(7) constraint innaya_pk  primary key,
    emane varchar2(20) not null,
    salary number(10),
    hire_date varchar2(25),
    address varchar2 (30)
    
);

describe innaya;
select*from innaya;


                                                    //2no ans
alter table innaya add(
    dept_id number (10),
    dept_name varchar2(40)
);
                                                    //3no ans


insert into innaya values(1,'suprova',2000,'01-01=2000','Azimpur');
insert into innaya values (2,'sheman',8000,'01-01=2000','azim');
insert into innaya values (3,'shema',3000,'01-01=2000','azimp');
insert into innaya values (4,'manto',50000,'01-01=2000','azimpu');
insert into innaya values (5,'she',90000,'01-01=2000','azimpur');
insert into innaya values (6,'suprova',2000,'01-01=2000','Azimpur');
insert into innaya values (7,'she',90000,'01-01=2000','azimpur',80,'ac');


                                                //4no ans
create view innaya2
as select last_name,salary
from employees
where dept_id=80;

                                            //5no ans

create sequence innayaEid_seq
        start with 100
        increment by 1
        maxvalue 999999
        nocache
        nocycle;
        
select *innayaEid_seq.currval
from*innaya;
commit;