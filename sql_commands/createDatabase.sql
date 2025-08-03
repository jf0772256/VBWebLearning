-- Oracle is odd in how this all works 
-- unlike SQLite or other file databases
-- you have to do some strange to me things
-- to create a new database.
--
-- so in the directory of the express database
-- in my case for express 21C the directory is:
-- "C:\app\[USER]\product\21c\oradata\XE\"
-- create new folder [WebTest1] BEFORE running the following command. 
-- disregard the create user command in the userCreate.sql
-- as we will be setting the user and their rols when the
-- DB is created. 
-- 
-- using sqlplus in command / terminal window
-- connect as SYS AS SYSDBA to connect to the container
-- use the password you created on the express install...

CREATE PLUGGABLE DATABASE WebTest1
	ADMIN USER webAdmin IDENTIFIED BY JesseIsGreat
	ROLES = (DBA)
	FILE_NAME_CONVERT = ('C:\app\jesse\product\21c\oradata\XE\pdbseed', 'C:\app\jesse\product\21c\oradata\XE\WebTest1');

-- After database creation you must open the database to ensure that the setup works, and that you can connect to the databse.
ALTER PLUGGABLE DATABASE WebTest1 OPEN;

-- it can take a few minutes to complete the whole process...
-- update connection to connect to the worlds greatest Database...
-- Remember that you can run Net Config Assistant tool to i guess make it update the TNS connection file???