FROM ubuntu:18.04

RUN apt-get update
RUN apt install -y sudo python3-pip &&\
    wget http://neuro.debian.net/_files/neurodebian-travis.sh &&\
    bash neurodebian-travis.sh &&\
    apt-get -q install -y git-annex-standalone &&\
    pip3 install datalad

