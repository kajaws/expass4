
    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Family (
        id bigint generated by default as identity,
        description varchar(255),
        primary key (id)
    );

    create table Job (
        salary float(53) not null,
        id bigint generated by default as identity,
        jobDescr varchar(255),
        primary key (id)
    );

    create table Person (
        family_id bigint,
        id bigint generated by default as identity,
        firstName varchar(255),
        lastName varchar(255),
        primary key (id)
    );

    create table Person_Job (
        Person_id bigint not null,
        jobList_id bigint not null unique
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        pincode varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Person 
       add constraint FKq5c84kpy1ioamtt7ht5c270dm 
       foreign key (family_id) 
       references Family;

    alter table if exists Person_Job 
       add constraint FKb784yqmsn896esmtk1xnlbj5m 
       foreign key (jobList_id) 
       references Job;

    alter table if exists Person_Job 
       add constraint FKjgqlaq1rryygfeeo6v0uhjy7p 
       foreign key (Person_id) 
       references Person;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Family (
        id bigint generated by default as identity,
        description varchar(255),
        primary key (id)
    );

    create table Job (
        salary float(53) not null,
        id bigint generated by default as identity,
        jobDescr varchar(255),
        primary key (id)
    );

    create table Person (
        family_id bigint,
        id bigint generated by default as identity,
        firstName varchar(255),
        lastName varchar(255),
        primary key (id)
    );

    create table Person_Job (
        Person_id bigint not null,
        jobList_id bigint not null unique
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        pincode varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Person 
       add constraint FKq5c84kpy1ioamtt7ht5c270dm 
       foreign key (family_id) 
       references Family;

    alter table if exists Person_Job 
       add constraint FKb784yqmsn896esmtk1xnlbj5m 
       foreign key (jobList_id) 
       references Job;

    alter table if exists Person_Job 
       add constraint FKjgqlaq1rryygfeeo6v0uhjy7p 
       foreign key (Person_id) 
       references Person;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Family (
        id bigint generated by default as identity,
        description varchar(255),
        primary key (id)
    );

    create table Job (
        salary float(53) not null,
        id bigint generated by default as identity,
        jobDescr varchar(255),
        primary key (id)
    );

    create table Person (
        family_id bigint,
        id bigint generated by default as identity,
        firstName varchar(255),
        lastName varchar(255),
        primary key (id)
    );

    create table Person_Job (
        Person_id bigint not null,
        jobList_id bigint not null unique
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        pincode varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Person 
       add constraint FKq5c84kpy1ioamtt7ht5c270dm 
       foreign key (family_id) 
       references Family;

    alter table if exists Person_Job 
       add constraint FKb784yqmsn896esmtk1xnlbj5m 
       foreign key (jobList_id) 
       references Job;

    alter table if exists Person_Job 
       add constraint FKjgqlaq1rryygfeeo6v0uhjy7p 
       foreign key (Person_id) 
       references Person;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Family (
        id bigint generated by default as identity,
        description varchar(255),
        primary key (id)
    );

    create table Job (
        salary float(53) not null,
        id bigint generated by default as identity,
        jobDescr varchar(255),
        primary key (id)
    );

    create table Person (
        family_id bigint,
        id bigint generated by default as identity,
        firstName varchar(255),
        lastName varchar(255),
        primary key (id)
    );

    create table Person_Job (
        Person_id bigint not null,
        jobList_id bigint not null unique
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        pincode varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Person 
       add constraint FKq5c84kpy1ioamtt7ht5c270dm 
       foreign key (family_id) 
       references Family;

    alter table if exists Person_Job 
       add constraint FKb784yqmsn896esmtk1xnlbj5m 
       foreign key (jobList_id) 
       references Job;

    alter table if exists Person_Job 
       add constraint FKjgqlaq1rryygfeeo6v0uhjy7p 
       foreign key (Person_id) 
       references Person;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Family (
        id bigint generated by default as identity,
        description varchar(255),
        primary key (id)
    );

    create table Job (
        salary float(53) not null,
        id bigint generated by default as identity,
        jobDescr varchar(255),
        primary key (id)
    );

    create table Person (
        family_id bigint,
        id bigint generated by default as identity,
        firstName varchar(255),
        lastName varchar(255),
        primary key (id)
    );

    create table Person_Job (
        Person_id bigint not null,
        jobList_id bigint not null unique
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        pincode varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Person 
       add constraint FKq5c84kpy1ioamtt7ht5c270dm 
       foreign key (family_id) 
       references Family;

    alter table if exists Person_Job 
       add constraint FKb784yqmsn896esmtk1xnlbj5m 
       foreign key (jobList_id) 
       references Job;

    alter table if exists Person_Job 
       add constraint FKjgqlaq1rryygfeeo6v0uhjy7p 
       foreign key (Person_id) 
       references Person;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        customer_id bigint,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Family (
        id bigint generated by default as identity,
        description varchar(255),
        primary key (id)
    );

    create table Job (
        salary float(53) not null,
        id bigint generated by default as identity,
        jobDescr varchar(255),
        primary key (id)
    );

    create table Person (
        family_id bigint,
        id bigint generated by default as identity,
        firstName varchar(255),
        lastName varchar(255),
        primary key (id)
    );

    create table Person_Job (
        Person_id bigint not null,
        jobList_id bigint not null unique
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        pincode varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKr73eujwdmgcc2bvrx2po05xt8 
       foreign key (customer_id) 
       references Customer;

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Person 
       add constraint FKq5c84kpy1ioamtt7ht5c270dm 
       foreign key (family_id) 
       references Family;

    alter table if exists Person_Job 
       add constraint FKb784yqmsn896esmtk1xnlbj5m 
       foreign key (jobList_id) 
       references Job;

    alter table if exists Person_Job 
       add constraint FKjgqlaq1rryygfeeo6v0uhjy7p 
       foreign key (Person_id) 
       references Person;
