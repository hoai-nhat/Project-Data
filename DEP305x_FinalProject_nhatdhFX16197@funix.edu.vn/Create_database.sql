create table DIM_CATEGORY(
category_id int primary key identity(1,1),
catagory nvarchar(255));

create table DIM_SOURCE(
source_id int primary key identity(1,1),
source nvarchar(255));

create table DIM_COMPANY(
company_id int primary key identity(1,1),
company nvarchar(255));

create table DIM_AGE(
age_id int primary key identity(1,1),
age nvarchar(50));

create table FACT_APP(
app_id int primary key identity(1,1),
app_name nvarchar(512),
source_id int,
category_id int,
company_id int,
age_id int,
downloads nvarchar(255),
price nvarchar(255),
rating nvarchar(10),
number_review nvarchar(255),
FOREIGN KEY (source_id) REFERENCES DIM_SOURCE(source_id),
FOREIGN KEY (category_id) REFERENCES DIM_CATEGORY(category_id),
FOREIGN KEY (company_id) REFERENCES DIM_COMPANY(company_id),
FOREIGN KEY (age_id) REFERENCES DIM_AGE(age_id))