# Spark_Network_Data_Pipeline_Challenge
1.Creation of data pipeline for ingesting JSON data from api into dataframes.
2.Apply data transformation and PII handling .
3.Derive insights from data using MySQL Database sql queries.

crdentials and url

https://github.com/pujasingh822/Spark_Network_Data_Pipeline_Challenge/edit/main/README.md



Spark_Network_assignment.sql-Thsi contains sql queries used for analyis and problem solving

Spark_network_assignment_Puja_Singh.ipynb-Jupyter Notebook which contains code for complete data pipeline

Model diag-Contains ER diagram depicting relationship between different identities

github/workflows/main.yaml-template which auto deploys jupyter code online 

requirements.txt-contains all dependent libraries required for deployment of notebook server


Online Databse url-

Below credentials required to connect to this database using mysql workbench
https://www.freesqldatabase.com/login/?loggedout=true

Email-pujasingh822@gmail.com
password-Netherlands2@


Host: sql6.freesqldatabase.com
Database name: sql6497849
Database user: sql6497849
Database password: 8Uv4Ea7ssR
Port number: 3306

Note-:You can access this database using mysql workbench.

All tables have been created in sql6497849 schema


Code Explanation-:

Data pipeline has been created to hit API and populate transformed/structured data into Pandas dataframes
PII handling like removal of name from email,message,first name,last name and complete address while data is imported into final dataframes
three final dataframes have been created for populating user,message and subscription tables created in Database





