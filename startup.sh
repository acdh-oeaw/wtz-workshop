#!/usr/bin/env bash
su - vagrant -c "source .venvs/myenv/bin/activate && nohup jupyter notebook --no-browser --ip=0.0.0.0 --port=8888 --notebook-dir=/home/vagrant/notebook --NotebookApp.token='' &"