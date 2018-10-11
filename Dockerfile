FROM node:latest
RUN npm install -g truffle
RUN npm install -g ganache-cli
EXPOSE 8545/tcp
