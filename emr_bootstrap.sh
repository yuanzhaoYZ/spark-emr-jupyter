#!/bin/bash
# yum packages:
sudo yum install -y htop tmux

# download and install anaconda:
wget -q https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh -O ~/anaconda3.sh
/bin/bash ~/anaconda3.sh -b -p $HOME/anaconda
echo -e '\nexport SPARK_HOME=/usr/lib/spark\nexport PATH=$HOME/anaconda/bin:$PATH' >> ~/.bashrc && source ~/.bashrc

# cleanup:
rm ~/anaconda3.sh

# enable https://github.com/mozilla/jupyter-spark:
sudo mkdir -p /usr/local/share/jupyter
sudo chmod -R 777 /usr/local/share/jupyter
pip install jupyter-spark
jupyter serverextension enable --py jupyter_spark
jupyter nbextension install --py jupyter_spark
jupyter nbextension enable --py jupyter_spark
jupyter nbextension enable --py widgetsnbextension
