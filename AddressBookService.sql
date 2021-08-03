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

insert into AddressBookTable values 
('Vetri','Maran','TNagar','Chennai','Tamil Nadu',6000207,9629522931,'vetri@yahoo.com'),
('Meena','Mohan','Melamadai','Maduari','Tamil Nadu',6250520,9629459258,'meenamohan@gmail.com'),
('Vijay','Kumar','Anna Nagar','Kottaiyam','Kerala',869456,9654973250,'vk@gmail.com')
select * from AddressBookTable

--UC4 Edit contact in table 
update AddressBookTable set email='shanthi.v@gmail.com' where firstName='Shanthi' and lastName='Venkat'
update AddressBookTable set city='Madurai' where firstName='Shanthi'

--UC5 Delete the record from table
delete from AddressBookTable where firstName='Vijay' and lastName='Kumar' 

--UC6 Retriving record based on City or state

select * from AddressBookTable where state='Tamil Nadu' or city='chennai'

select * from AddressBookTable where state = 'Kerala'

--UC7 Calculating the size of the record by state or city

select count(phoneNumber)as NoOfContact,state from AddressBookTable group by state
select count(phoneNumber) as NoOfContact,city from AddressBookTable group by city

--UC8 Retrive Record Base on city sorted order
select * from AddressBookTable where city='chennai' order by(firstName)
select * from AddressBookTable where state='Tamil Nadu' order by(firstName)

--UC9-Adding type of the contact
alter table addressBookTable add bookType varchar(200)
update AddressBookTable set bookType='Family' where personId=1 or personId=6
update AddressBookTable set bookType='Friend' where personId=4 or personId=2
update AddressBookTable set bookType='Profession' where personId=5

--UC10 Calculating the size of the record based on type

select count(phoneNumber)as NoOfContact,bookType from AddressBookTable group by bookType

--UC11 Adding contact in Two type
insert into AddressBookTable values ('Vijay','Kumar','Anna Nagar','Kottaiyam','Kerala',869456,9654973250,'vk@gmail.com','Friend')
select * from AddressBookTable