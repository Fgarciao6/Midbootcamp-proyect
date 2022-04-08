#Create a database called house_price_regression

create database house_price_regression;

use house_price_regression;
#Create a table house_price_data with the same columns as given in the csv file. Please make sure you use the correct data types for the columns.
create table
		houser_price_data(id CHAR(10),
							date CHAR(10),
                            bedrooms INT,
                            bathrooms double,
                            sqft_living INT,
                            sqft_lot INT,
                            floors DOUBLE,
                            waterfront INT,
                            view INT,
                            condition1 INT,
                            grade INT,
                            sqft_above INT,
                            sqft_basement INT,
                            yr_built INT,
                            yr_renovated INT,
                            zipcode INT,
                            lat double,
                            long1 double,
                            sqft_living15 INT,
                            sqft_lot15 INT,
                            price INT);
                            
#Import the data from the csv file into the table. Before you import the data into the empty table, make sure that you have deleted the headers from the csv file. To not modify the original data, if you want you can create a copy of the csv file as well. Note you might have to use the following queries to give permission to SQL to import data from csv files in bulk:

#Select all the data from table house_price_data to check if the data was imported correctly
SELECT * FROM house_price_regression.houser_price_data;

#Use the alter table command to drop the column date from the database, as we would not use it in the analysis with SQL. Select all the data from the table to verify if the command worked. Limit your returned results to 10.

ALTER TABLE houser_price_data DROP COLUMN date;

select * from houser_price_data limit 10;

#Use sql query to find how many rows of data you have.

select count(*) from houser_price_data;

#Now we will try to find the unique values in some of the categorical columns:

#What are the unique values in the column bedrooms

SELECT DISTINCT(bedrooms) FROM houser_price_data;

#What are the unique values in the column bathrooms?

SELECT DISTINCT(bathrooms) FROM houser_price_data;

#What are the unique values in the column floors?

SELECT DISTINCT(floors) FROM houser_price_data;

#What are the unique values in the column condition?

SELECT DISTINCT(condition1) FROM houser_price_data;

#What are the unique values in the column grade?

SELECT DISTINCT(grade) FROM houser_price_data;

#Arrange the data in a decreasing order by the price of the house. Return only the IDs of the top 10 most expensive houses in your data.

