# Dockerfile
FROM docker.repository.cloudera.com/cdsw/engine:2

MAINTAINER Frank Gonzales "frank.m.gonzales@sce.com"

# update packages and install maven
RUN apt-get update && \
    apt-get install -y -q graphviz maven mc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install graphviz

RUN pip install pandas
RUN pip install keras
RUN pip install scikit-learn
RUN pip install tensorflow
RUN pip install torch
RUN pip install torchvision
RUN pip install pytorch_lightning
RUN pip install xgboost
RUN pip install lightgbm
RUN pip install statsmodels
RUN pip install h2o
RUN pip install pyspark
RUN pip install shap
RUN pip install paddlepaddle
RUN pip install hdfs


RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
RUN dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
RUN apt-get update
RUN apt-get -y install cuda





