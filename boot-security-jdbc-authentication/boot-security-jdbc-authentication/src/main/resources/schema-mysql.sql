DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS authorities;
DROP TABLE IF EXISTS users;

CREATE TABLE employee (
  empId VARCHAR(10) NOT NULL,
  empName VARCHAR(100) NOT NULL
);

create table users (
    username varchar(50) not null primary key,
    password varchar(120) not null,
    enabled boolean not null
);

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references users (username)
);

 insert into users(username, password, enabled)values('javainuse','javainuse',true);
 insert into authorities(username,authority)values('javainuse','ROLE_ADMIN');
 
  insert into users(username, password, enabled)values('employee','employee',true);
 insert into authorities(username,authority)values('employee','ROLE_USER');
 
 
 
 
 
 -------------------for oracle-----------------------------------------------------
 
 
CREATE TABLE employee (
  empId VARCHAR(10) NOT NULL,
  empName VARCHAR(100) NOT NULL
);

drop table users;
alter table users add(
    username varchar(50) not null primary key,
    password varchar(120) not null,
    enabled varchar(10) not null
);



create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    CONSTRAINT fk_orders1 FOREIGN KEY (username) REFERENCES users(username)
);

 insert into users(username, password, enabled)values('javainuse','javainuse','true');
 insert into authorities(username,authority)values('javainuse','ROLE_ADMIN');
 
  insert into users(username, password, enabled)values('employee','employee','true');
 insert into authorities(username,authority)values('employee','ROLE_USER');
 
 commit;