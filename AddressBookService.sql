--UC1 Creating the database AddressBookService
create database AddressBookService

--UC2 Creating address book table with first name, last name,address,city,state,phone number,Zipcode,email address
create table AddressBookTable
(
  personId int identity(1,1) primary key,
  firstName varchar(100),
  lastName varchar(100),
  address varchar(200),
  city varchar(50),
  state varchar(100),
  zipCode bigint,
  phoneNumber bigint,
  email varchar(50)
)

--UC3-Insert Records into the table
insert into AddressBookTable values 
('Soubar','Muthu','K.K.Nagar','Chennai','Tamil Nadu',600007,8642536784,'sou@gmail.com'),
('Shanthi','Venkat','MGR Nagar','Maduari','Tamil Nadu',625020,9875621552,'shnathi.v@gmail.com'),
('Vijay','Kumar','Anna Nagar','Kottaiyam','Kerala',869456,8654973250,'vk@gmail.com')

select * from AddressBookTable

--UC4 Edit contact in table 
update AddressBookTable set email='shanthi.v@gmail.com' where firstName='Shanthi' and lastName='Venkat'
update AddressBookTable set city='Madurai' where firstName='Shanthi'

--UC5 Delete the record from table
delete from AddressBookTable where firstName='Vijay' and lastName='Kumar' 