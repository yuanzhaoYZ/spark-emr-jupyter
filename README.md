# spark-emr-jupyter
Tools to easily set up and run Jupyter on Spark on AWS EMR.

See [my blog](https://mikestaszel.com/2017/10/16/jupyter-notebooks-with-pyspark-on-aws-emr/) for more details.

# Notes

`jupyter_step_for_geospatial.sh`: install jupyter , pyspark and setup conda env for geospatial analysis. Check the logs of this step in EMR to get the jupyter login token. (EMR->Steps->Use Jupyter->View Logs->stderr)
