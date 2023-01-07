FROM        maven 
RUN         useradd roboshop  
RUN         chown roboshop:
USER        roboshop 
WORKDIR     /home/roboshop  
COPY        pom.xml .
COPY        src . 
RUN         mvn package   
RUN         mv target/shipping-1.0.jar shipping.jar
RUN         rm -rf src/  
ENTRYPOINT  ["java", "-jar", "shipping.jar"]