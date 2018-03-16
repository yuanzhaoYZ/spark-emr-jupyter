#!/bin/bash
# set up spark to use jupyter:
echo "" | sudo tee --append /etc/spark/conf/spark-env.sh > /dev/null
echo "export PYSPARK_PYTHON=/home/hadoop/anaconda/bin/python" | sudo tee --append /etc/spark/conf/spark-env.sh > /dev/null
echo "export PYSPARK_DRIVER_PYTHON=/home/hadoop/anaconda/bin/jupyter" | sudo tee --append /etc/spark/conf/spark-env.sh > /dev/null
echo "export PYSPARK_DRIVER_PYTHON_OPTS='notebook --no-browser --ip=0.0.0.0'" | sudo tee --append /etc/spark/conf/spark-env.sh > /dev/null

# optional
export PATH=~/anaconda/bin:$PATH
sudo yum -y install git
git config --global user.email "zhao.yuan.work@gmail.com"
git config --global user.name "Yuan Zhao"
echo "y" |conda create -n playground_py36 --copy -y -q python=3.6 pyspark numpy pandas pysal scipy ipykernel
source activate playground_py36
echo "y" |pip install awscli
echo "y" |pip install geopandas
echo "y" |pip install https://github.com/python-visualization/folium/archive/master.zip
source deactivate

conda install -y nb_conda
pyspark --master yarn
