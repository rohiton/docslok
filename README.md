# docslok

docslok is a web application built on Spring Framework that lets user to create their digital account and enable them to secure, store and share the documents such as images, PDFs, docx and other documents in a secure environment.

The primary goal of this project is to create a platform where user can upload their documents and make them accessible from anywhere at anytime.

## docslok features

1. User can create their account and submit the details like Aadhaar Number & Secret PIN
2. After creating a account, email confirmation will be sent to the registered user
3. User won't be able to upload their documents unless he verify their email and add the Aadhaar Number & Secret PIN
4. User can update their profile by going to Update Profile page
5. For additional help, user can raise a ticket
6. User can also delete their account and once account gets deleted, all the information associated with the user will be removed
7. User can also deactivate their account and won't be able to use the account unless he reactivate it by simply login as usual
8. User can upload their documents along with other details

## Technologies involved

1. Spring Boot
2. JSP
3. HTML/CSS/JS
4. MySQL
5. Spring Security
6. Spring Data JPA

## Running the project

1. Clone the project
2. Change the username and password for email in application.properties and CommonConfiguration file
3. Do mvn eclipse:eclipse && mvn clean install in base directory
4. Create role in USER_ROLE table named "ROLE_USER"
5. Do mvn spring-boot:run
6. Project will be up at localhost:8090/app
