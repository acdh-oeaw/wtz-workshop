About
-----

This repository is for the WTZ workshop on text processing on 18-5-2017.
It contains two things:

* A Jupyter notebook that shows basic text processing with Python
* And a Vagrant file that automatically installs and launches the Jupyter notebook

Install the Vagrant box
-----------------------

* Clone this repo
* Install Vagrant and a provider (probably virtualbox)
* go to the base folder and run vagrant up

This should be it. Downloading the box, starting it and downloading additional files will take a while

Alternatively use a virtualenv
------------------------------

Alternatively you can use your own Python environment and install only the virtualenv:

* create a new virtualenv: virtualenv -p python3 myenv
* activate it: source myenv/bin/activate
* install the packages: pip3 install -r requirements.txt

After that you will have the needed packages, but not the spacy language packages:

* python -m spacy download de

The notebook
------------

When you use the vagrant box the Jupyter notebook should be accessible under http://127.0.0.1:8889
