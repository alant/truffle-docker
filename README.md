# truffle-docker


```bash
# Clone this repo
cd truffle-docker
# alant/truffle is the container name, you can pick your own name if you'd like
docker build -t alant/truffle . 
# cd to a directory where you will have the dapp projects cloned to then run the following command
docker run -it --name workshop -v $PWD:/home/sandbox alant/truffle bash
# open a new terminal and run ganache
docker exec -it workshop bash
ganache-cli
# go back to the terminal where you have the first docker run above
# go to the project and you'll be able to run truffle init, migrate etc.
cd /home/sandbox
```
