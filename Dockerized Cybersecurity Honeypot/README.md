# Michael Nguyen's Docker Honepot


## Commands To Use

**Build and Run**
docker build -t basic_honeypot .

docker run -d -p 2222:2222 basic_honeypot

**Mount Log**
docker run -d -p 2222:2222 -v "C:/School/ODU 2023-2025/TryNotBroke/Code Projects/Dockerized Cybersecurity Honeypot/ssh_honeypot.log:/usr/src/app/ssh_honeypot.log" basic_honeypot

**Get Log**
Get-Content "C:/School/ODU 2023-2025/TryNotBroke/Code Projects/Dockerized Cybersecurity Honeypot/ssh_honeypot.log" -Wait

**Direct Insert Test because Windows**
ssh test@host.docker.internal -p 2222

**Check Running**
docker ps

**Delete User and Rerun**
docker stop "name goes here"
docker rm "name goes here"



