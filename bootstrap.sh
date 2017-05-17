#!/usr/bin/env bash

apt-get update
apt-get -y upgrade
apt-get install -y python3 libxml2-dev libxslt1-dev python3-dev build-essential
apt-get install -y python3-pip
pip3 install virtualenv
su - vagrant -c "mkdir .venvs && virtualenv -p python3 .venvs/myenv"
su - vagrant -c "source .venvs/myenv/bin/activate && pip3 install jupyter nltk requests lxml spacy"