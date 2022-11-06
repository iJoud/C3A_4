use lifequest;


CREATE TABLE account (id varchar(255) NOT NULL, 
username varchar(255) NOT NULL, 
password varchar(255) NOT NULL, 
email varchar(255) NOT NULL, 
phoneNumber varchar(255) NOT NULL, 
birthdate varchar(255) NOT NULL, 
bloodType varchar(255) NOT NULL, 
PRIMARY KEY (id));

CREATE TABLE post (
pid int NOT NULL AUTO_INCREMENT, 
uid varchar(255) NOT NULL, 
bloodType varchar(100) NOT NULL, 
donationType varchar(100) NOT NULL, 
city varchar(100) NOT NULL, 
hospital varchar(100) NOT NULL, 
postBody varchar(255) NOT NULL, 
date varchar(100) NOT NULL, 
PRIMARY KEY (pid),
FOREIGN KEY (uid) REFERENCES account(id));

