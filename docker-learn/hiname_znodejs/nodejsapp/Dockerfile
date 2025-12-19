FROM node:25.1-alpine

##region chay khi docker build

#region WORKDIR
RUN echo 'truockhi dinhgnhia WORKDIR';\
    pwd
WORKDIR        /app
RUN echo 'saukhi dinhgnhia WORKDIR';\
    pwd
#endregion WORKDIR

#region COPY
RUN echo 'truoc COPY'; cd . ; pwd ; ls -lah

#              . WORKDIR
#              . /app
COPY ./main.js .

RUN echo 'sau COPY'; cd . ; pwd ; ls -lah
#endregion COPY

##endregion chay khi docker build


# chay khi docker run
CMD node ./main.js
#        . WORKDIR
