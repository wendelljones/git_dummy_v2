MySQL database notes

insert into User values(null, 'kim', '+1 4985624871', 'kimjones@example.com', 48, 'Plano');
insert into User values(null, 'Aja', '+1 3245981207', 'aja@example.com', 23, 'Plano');
insert into User values(null, 'logan', '+1 4587830570', 'logan@example.com', 14, 'Plano');
insert into User values(null, 'caden', '+1 1254860584', 'caden@example.com', 17, 'Plano');
insert into User values(null, 'cole', '+1 4845189418', 'colej@example.com', 48, 'Plano');
insert into User values(null, 'rylee', '+1 4845059754', 'rylee@example.com', 48, 'Plano');

insert into Customer values(null, 'jake', '+1 99999 11111', 'jake@example.com');
insert into Customer values(null, 'nan', '+1 99999 22222', 'nan@example.com');
insert into Customer values(null, 'patches', '+1 99999 33333', 'patches@example.com');
insert into Customer values(null, 'ninja', '+1 99999 44444', 'ninja@example.com');
insert into Customer values(null, 'hobo', '+1 99999 55555', 'hobo@example.com');
insert into Customer values(null, 'heather', '+1 99999 66666', 'heather@example.com');
insert into Customer values(null, 'steph', '+1 99999 77777', 'steph@example.com');

insert into Address values(null, '5445 Bendavis Road', 'Little Elm', 75048, 2);
insert into Address values(null, '5445 Cornhole Cir', 'Denton', 75048, 2);
insert into Address values(null, '5745 Miles Rd', 'Prosper', 75021, 3);
insert into Address values(null, '5843 Cranburry Road', 'Prosper', 75048, 4);
insert into Address values(null, '1234 ding street', 'Plano', 75048, 7);
insert into Address values(null, '5847 eighties lane', 'Denton', 75048, 7);
insert into Address values(null, '6842 Wilcox Drive', 'Ft Worth', 75048, 4);
insert into Address values(null, '7564 Beltline Rd', 'Addisson', 75048, 3);

Select Customer.name, Customer.phone, Address.adrsLine, Address.city from Customer
Inner Join Address on Customer.cid = Address.cid;

Select Customer.name, Customer.phone, Address.adrsLine, Address.city from Customer
Left Join Address on Customer.cid = Address.cid
Order by Customer.name;

Select Address.adrsLine, Address.city, Customer.name, Customer.phone from Customer
Right Join Address on Customer.cid = Address.cid
Order by Customer.name;


create table Customer (
    cid int PRIMARY KEY AUTO_INCREMENT,
    name varchar(256),
    phone varchar(20),
    email varchar(256)
);

create table Address(
    aid int PRIMARY KEY AUTO_INCREMENT,
    adrsLine varchar(256),
    city varchar(256),
    pincode int,
    cid int,
    CONSTRAINT fk_customer_address FOREIGN KEY (cid)
    REFERENCES Customer(cid)
);