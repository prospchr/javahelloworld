FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/Helloworld.java
ENV FOO bar
RUN mkdir var 
ENTRYPOINT ["java","-cp","bin","Helloworld"]

