FROM        maven:3-openjdk-8
RUN         useradd -m roboshop  
USER        roboshop 
WORKDIR     /home/roboshop  
COPY        pom.xml .
COPY        src/ src/
RUN         ls -ltr 
RUN         env && mvn package   
RUN         mv target/shipping-1.0.jar shipping.jar
USER        root 
RUN         rm -rf src/  
USER        roboshop 
ENTRYPOINT  ["java", "-jar", "shipping.jar"]  