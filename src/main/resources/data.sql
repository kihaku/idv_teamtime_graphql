-- employees
insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Musterstr.', '4');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '1990-01-01', 'Max', 'Mustermann', 56200, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Musterstr.', '4');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '1995-02-01', 'Maria', 'Mustermann', 56200, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Burgstr.', '26');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '2000-03-01', 'Petra', 'Bauer', 77600, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Hofstr.', '2a');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '1997-01-01', 'Paul', 'Glück', 77100, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Halb-und-Halb-Web', '6');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '2020-10-01', 'Julia', 'Ganz', 45000, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Atlantikstr.', '28');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '2020-08-01', 'Jochen', 'Rochen', 45000, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Badener-Platz', '3');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '1738-01-01', 'Karl', 'Friedrich', 112099, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Benjamin-Blühmchen-Platz', '13b');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '1999-12-01', 'Karla', 'Kolumna', 89300, CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Nibelungenstr.', '1');
insert into EMPLOYEE (ID, EMPLOYMENT_DATE, FIRST_NAME, LAST_NAME, SALARY, ADDRESS_ID) VALUES (NEXT VALUE FOR EMPLOYEE_SEQ, '2001-07-01', 'Kriemhild', 'von Xanten', 110900, CURRENT VALUE FOR ADDRESS_SEQ);


-- departments
insert into DEPARTMENT (ID, NAME, HEAD_ID) VALUES (NEXT VALUE FOR DEPARTMENT_SEQ, 'Development', (select id from EMPLOYEE where FIRST_NAME = 'Kriemhild'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Kriemhild'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Max'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Karla'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Jochen'));

insert into DEPARTMENT (ID, NAME, HEAD_ID) VALUES (NEXT VALUE FOR DEPARTMENT_SEQ, 'Operations', (select id from EMPLOYEE where FIRST_NAME = 'Karl'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Karl'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Maria'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Petra'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Paul'));
insert into DEPARTMENT_EMPLOYEES(DEPARTMENT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR DEPARTMENT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Julia'));

-- customers
insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Arbeitgeberplatz', '1');
insert into CUSTOMER (ID, NAME, ADDRESS_ID) VALUES (NEXT VALUE FOR CUSTOMER_SEQ, 'Dienstleister AG', CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'Berlin', 'Deutschland', '10713', 'Aachener Str.', '12');
insert into CUSTOMER (ID, NAME, ADDRESS_ID) VALUES (NEXT VALUE FOR CUSTOMER_SEQ, 'Automobil AG', CURRENT VALUE FOR ADDRESS_SEQ);

insert into ADDRESS (ID, CITY, COUNTRY, POSTAL_CODE, STREET, STREET_NUMBER) VALUES (NEXT VALUE FOR ADDRESS_SEQ, 'München', 'Deutschland', '80339', 'Platz-des-Geldes', '1aaa');
insert into CUSTOMER (ID, NAME, ADDRESS_ID) VALUES (NEXT VALUE FOR CUSTOMER_SEQ, 'Wirtschaftsprüfer AG', CURRENT VALUE FOR ADDRESS_SEQ);

-- projects
insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 70, 'interne Serverwartung', 999999, (select id from CUSTOMER where name = 'Dienstleister AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Maria'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Julia'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Petra'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Paul'));
insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 70, 'Weiterentwicklung des Stundenbuchungstools', 999999, (select id from CUSTOMER where name = 'Dienstleister AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Max'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Karla'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Jochen'));

insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 65, 'Wartung', 10000, (select id from CUSTOMER where name = 'Automobil AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Max'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Karla'));
insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 65, 'Unterstützung des Betriebs', 10000, (select id from CUSTOMER where name = 'Automobil AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Julia'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Paul'));

insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 130, 'Neuentwicklung des Intranetportals', 50000, (select id from CUSTOMER where name = 'Wirtschaftsprüfer AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Max'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Karla'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Jochen'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Kriemhild'));
insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 130, 'Anbindung des E-Mail-Dienstleisters', 1000, (select id from CUSTOMER where name = 'Wirtschaftsprüfer AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Karla'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Julia'));
insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 130, 'Anbindung des SMS-Dienstleisters', 1000, (select id from CUSTOMER where name = 'Wirtschaftsprüfer AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Jochen'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Petra'));
insert into PROJECT (ID, HOURLY_RATE, NAME, PERSON_HOURS, CUSTOMER_ID) VALUES (NEXT VALUE FOR PROJECT_SEQ, 130, 'Evaluierung der Cloud-Infrastruktur', 1000, (select id from CUSTOMER where name = 'Wirtschaftsprüfer AG'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Maria'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Julia'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Petra'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Paul'));
insert into PROJECT_EMPLOYEES (PROJECT_ID, EMPLOYEES_ID) VALUES (CURRENT VALUE FOR PROJECT_SEQ, (select id from EMPLOYEE where FIRST_NAME = 'Karl'));