# MySQL
Tasks on phpmyadmin apache 2 server with MySQL 

(resources: https://www.w3resource.com/sql-exercises, https://www.kaggle.com/rounakbanik/the-movies-dataset)

## I. Description of the content in this project

### 1. Movies database
consists of 10 tables:
- 5 data tables (primary key)
- 5 join tables

### 2. UEFA Cup 2016 database
consists of 18 tables:
- 11 data tables (primary key)
- 7 join tables

## II. How to build the database in phpMyAdmin from scratch, as well as save the database in the form of mysql file

### A) Windows

1. For this project, you will need the Apache server into your computer. It is easier to use the XAMPP web environment, because it includes everything you will need later. First, you have to download the XAMPP distribution for Windows from the official site https://www.apachefriends.org/index.html
2. Here, we are not going to explain how to build a complete separate web site, with access to the database. We just will upload the database into the phpMyAdmin. For this purpouse, you will need to start the xampp aplication from the start button. It will load everything needed, from the php language to the apache server and finaly to the mysql database server.
3. Turn on both the Apache and the MySQL from the buttons on the control panel of the XAMPP. This will start both functionalities.
4. Enter the phpMyAdmin by typing localhost/phpmyadmin into the address bar of your explorer. Usually, when installed the admin account name is 'root' and the password is empty. If you need a restricted access, you could make new user and password, and even a rescticted access via SSH secure protocol. 
5. If you have a very big CSV file with a lot of information, that you would like to use in a MySql project, it would be inefficient to type every single INSERT command by hand. For that purpouse, you may want to upload the information into MySQL table by the means of an CSV file first, and then, to modify it and connect with other tables into a relational database. 
6. How is this performed: After connecting to the MySQL server, create the new database ``` CREATE DATABASE database_name; ``` (or open your current database) ```USE database_name```.
7. Then, create the table with the required fields (as needed): ```CREATE TABLE table_name (id INT NOT NULL AUTO_INCREMENT, ..., PRIMARY KEY (id))```. The columns in the table would be of your choice and needs and are not explained here. You have to know now to work with SQL querries and tables.
8. Next, the CSV file will need to be loaded into the database table we just created: </br> ```LOAD DATA LOCAL INFILE '/Users/User_name/Desktop/file.csv'``` </br>```INTO TABLE table_name``` </br>```FIELDS TERMINATED BY ','``` </br>```LINES TERMINATED BY '\n';``` The table is imported.
9. Alternatively, if you have the whole SQL file, you could import it directly into the SQL editor of phpMyAdmin. First, however you will have to make the required database, and then, to import the SQL file in the SQL tab/'run querries' textbox and hit the 'GO' button.
10. Also, if you want to export an SQL file for later use, you can use the export functionality in the phpMyAdmin. From there, you can export the whole database, or just a single table.
