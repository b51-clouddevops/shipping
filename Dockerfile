FROM        maven:3-openjdk-8
RUN         useradd -m roboshop  
USER        roboshop 
WORKDIR     /home/roboshop  
COPY        pom.xml .
COPY        src/ src/
RUN         mvn package   
RUN         mv target/shipping-1.0.jar shipping.jar
RUN         rm -rf src/  
ENTRYPOINT  ["java", "-jar", "shipping.jar"]