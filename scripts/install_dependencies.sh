#!/bin/bash
sudo apt-get install -y wget ca-certificates python-software-properties

# Add latest stable Nginx
sudo add-apt-repository ppa:nginx/stable

# Add official PostgreSQL repos
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.l'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update APT and install dependencies
sudo apt-get update
sudo apt-get install -y postgresql-9.4 build-essential libssl-dev libbz2-dev libsqlite3-dev libreadline-dev supervisor

# Setup datamade user
sudo useradd -d /home/datamade -m -r datamade
