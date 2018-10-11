FROM ubuntu:18.04
RUN apt update \
 && apt install -y \
    curl \
    gnupg \
    gcc \
    g++ \
    make \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
 && apt install -y nodejs \
 && rm -rf /var/lib/apt/lists/*
RUN npm install -g truffle
RUN npm install -g ganache-cli
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E1DD270288B4E6030699E45FA1715D88E1DF1F24
RUN su -c "echo 'deb http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/git.list"
RUN apt-get update && apt-get install -y git
EXPOSE 8545/tcp
EXPOSE 3000/tcp
EXPOSE 4000/tcp
