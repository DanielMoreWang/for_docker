FROM nvidia/cuda:11.5.2-cudnn8-devel-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NOWARNINGS=yes

RUN apt-get update && apt-get install -y vim python3 python3-pip 
RUN pip3 install -U scipy scikit-learn
RUN pip3 install install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu115
RUN pip3 install tensorboard torchsummary==1.5.1
RUN pip3 install numpy==1.23.5
RUN pip3 install tqdm==4.65.0
RUN pip3 install ipdb==0.13.13
RUN pip3 install  chainer==7.8.1
