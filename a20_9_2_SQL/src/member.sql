drop table member;
create table member (
	code varchar2(10) not null,
	name varchar2(30) not null,
	id varchar2(30),
	pwd varchar2(15),
	age number(5)
)

insert into member(code, name, id, pwd, age)
 values('1001', '������', 'jeea', '1111', 20);
 
insert into member(code, name, id, pwd, age)
 values('1002', '�����', 'rose', '2222', 20);
 
insert into member(code, name, id, pwd, age)
 values('1002', '�����', 'lily', '333', 18);
 
insert into member
 values('1003','ȫ�浿','gildong','444',18);
 --��ȸ(�˻�) select �ʵ��� from ���̺��;
 select * from member;
 select code, name from member;
 select code, name, age from member where code='1001';
 select age from member;
 select distinct age from member;
 select * from member where name='ȫ�浿';
 select * from member where name like 'ȫ%';
 select * from member where name like '%ȫ%';
 select * from member where name like '��__' and code='1004';
 select * from member order by name asc;
 select * from member order by name desc;
 select name, '����ǳ��̴�', age from member;
 select name, age+10 from member;
 select count(*) from member;
 --count(), sum(), avg(), max(), min() �����Լ�
 select * from member where age in(20,30);
 select * from member where age=20 or age=30; --�������� ���� �ǹ�
 select * from member where age not in(20,30);
 select * from member where age between 20 and 30;
 select * from member where pwd is null; -- ������ ��ġ�� ���� = ��
 select * from member where pwd is not null;
 select avg(age) from member;
 select age, count(age) from member group by age;
 
 --����(������Ʈ)update ���̺�� set �������� where ����;
 update member set pwd='1234' where name='�����';--where�ڿ� �̸��� ������� ���
 select * from member;
 update member set code='1005' where name like 'ȫ%'; --%�� like�� like �����
 update member set age=age+1 where name='ȫ�浿' and pwd='444';
 
 --DB���� ���ڵ� ����(����) delete from ���̺�� where ����;
 delete from member where name='�����';
 select * from member;
 delete from member where name like '%ȫ%'
 
 delete from member;
 
 --DML (���������۾��)-insert, select, update, delete
 --DDL(������ ���� ���)- create, alter, drop
 
 --�������� alter table ���̺�� add(  )
 --�������� alter table ���̺�� modify
 --�������� alter table ���̺�� drop
 
 alter table member add(email varchar2(20));
 select * from member;
 alter table member modify(email varchar2(40));
 select * from member;
 
 alter table member drop column email;
 
 drop table member;
 
 
 