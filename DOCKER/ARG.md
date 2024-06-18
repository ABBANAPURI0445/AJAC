```
FROM alpine:3.9.3
LABEL maintainer="Collabnix"

#Setting a default value to Argument WELCOME_USER
ARG WELCOME_USER=Collabnix
RUN echo "Welcome $WELCOME_USER, to Docker World!" > message.txt
CMD cat message.txt
```
1. build docker image ```docker build -t arg .```
2. create docker container ```docker run arg```
3. change arg while building the image ```docker image build -t arg --build-arg WELCOME_USER=AJA . ```
4. create docker container 