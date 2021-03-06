About
-----

This repository contains notebooks showing basic text processing.
It contains two things:

* A Jupyter notebooks that show basic text processing with Python
* And a Vagrant file that automatically installs and launches the Jupyter notebook

Install the Vagrant box
-----------------------

* Clone this repo
* Install Vagrant and a provider (probably virtualbox)
* go to the base folder and run ``vagrant up``

This should be it. Downloading the box, starting it and downloading additional files will take a while

Alternatively use a virtualenv
------------------------------

Alternatively you can use your own Python environment and install only the virtualenv:

* create a new virtualenv: ``virtualenv -p python3 myenv``
* activate it: ``source myenv/bin/activate``
* install the packages: ``pip3 install -r requirements.txt``

After that you will have the needed packages, but not the spacy language packages:

* ``python -m spacy download de`` (for the English model use "en")

The notebook
------------

When you use the vagrant box the Jupyter notebook should be accessible under http://127.0.0.1:8889

when you use your own environment you still need to start jupyter:

* change to WTZ repo directory
* start the notebook: ``jupyter notebook``

Jupyter should be launched within a new browser window.
