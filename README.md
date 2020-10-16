# OC : Parcours Java / Project 7 ( Poseidon )
##### Author : **_MorganCpn_**

## Description
Trading app for entreprise

## Configuration

	- Java 11
	- Maven 4.0.0
	- Spring Boot 2.2.5.RELEASE
	- Hiberanate 5.4.21.Final
	
## Install Project

1. Import JAVA project on your computer and your IDE
2. Import Database : /src/main/resources/static/database/database_prod.sql
3. Change DB settings (host / port / user / password) in src/main/resources/static/database/application.properties
**WARNING : Don't change database name if you don't change databse name in your database software**
6. Run `mvn clean site` to generate tests, coverage, and report site
**WARNING : if you run test without import database, tests will fail**
7. Change server port in /src/main/resources/application.properties (Default : `server.port=9090`)
8. Install mvn wrapper : `mvn -N io.takari:maven:wrapper` 
9. Run app : `./mvnw spring-boot:run`
10. Application start on `http://localhost:[your port]`

## Running App

`./mvnw spring-boot:run`

## Connect to App

Go to : `http://localhost:[your port]`
Create you an account or connect you with the demo account `user : admin / pwd : password` 

## Testing

`mvn test`
