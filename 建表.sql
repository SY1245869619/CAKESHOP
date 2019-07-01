drop schema if exists eshop;
create schema eshop;
use eshop;

create table customer
(
	ID int unsigned auto_increment,
	`name` varchar(45) default '',
	pwdHash varchar(100) not null,
	addr varchar(45) default '',
	phoneNum varchar(20) default '',
	email varchar(45) not null,
	balance double unsigned default 0,
	vipLevel varchar(20) default '',
    bonusPnt int unsigned default 0,
    primary key (ID),
	unique(email)
);

create table product
(
	ID int unsigned auto_increment,
	`name` varchar(45) not null,
	num int unsigned default 0,
	prize double unsigned not null,
	category varchar(20) not null,
	flavour varchar(20) not null,
	`weight` varchar(20) not null,
	color varchar(20) not null,
	detail varchar(200) not null,
	primary key (ID)
);

create table purchase
(
	ID int unsigned auto_increment,
    c_id int unsigned not null,
    p_id int unsigned not null,
	num int unsigned not null,
    addr varchar(100) default '',
    `name` varchar(20) default '',
    phoneNum  varchar(20) default '',
    postalCode varchar(20) default '',
	logistics varchar(45) default '',
	waybillNum varchar(45) default '',
	`status` int unsigned default 0,
	comm varchar(200) default '',
    primary key (ID),
	foreign key (c_id) references customer(ID)
		on delete cascade,
	foreign key (p_id) references product(ID)
		on delete cascade
);

create table browse
(
	ID int unsigned auto_increment,
    c_id int unsigned not null,
    p_id int unsigned not null,
    primary key (ID),
	foreign key (c_id) references customer(ID)
		on delete cascade,
	foreign key (p_id) references product(ID)
		on delete cascade
);