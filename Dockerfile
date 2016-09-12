FROM ubuntu:16.04
# replace this with your application's default port

WORKDIR /tmp/app 

RUN     cp /etc/apt/sources.list /etc/apt/sources.list.original &&\
        sed -i 's/archive\.ubuntu\.com\/ubuntu/mirror\.internode\.on\.net\/pub\/ubuntu\/ubuntu/1' /etc/apt/sources.list && \
        apt-get -y update

RUN     apt-get install -y nodejs && \
        apt-get install -y npm 

RUN     echo 'Installing serverless beta' && \
        npm install -g serverless@beta && \
        which serverless

