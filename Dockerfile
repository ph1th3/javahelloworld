# Example of a comment
FROM java:7
ENV APP_DIR /usr/local/share/helloworld
RUN mkdir -p $APP_DIR/src $APP_DIR/bin
COPY src/HelloWorld.java $APP_DIR/src/
RUN /usr/bin/javac $APP_DIR/src/HelloWorld.java  -d $APP_DIR/bin
WORKDIR $APP_DIR
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
