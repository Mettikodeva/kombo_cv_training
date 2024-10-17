FROM ros:noetic

# FROM ubuntu:22.04


WORKDIR /cv

RUN sudo apt update && sudo apt upgrade -y

# General dependencies
RUN sudo apt-get update && apt-get install -y \	
	build-essential \
	cmake \
	git

RUN sudo apt install python3-pip -y

RUN sudo apt install python-is-python3 -y

RUN pip install opencv-contrib-python 
RUN pip install matplotlib
RUN pip install ipykernel
# RUN pip install pyqt6
COPY test.py ./
RUN apt-get update
RUN apt install build-essential


RUN apt-get install -y libgl1-mesa-dev
RUN apt-get install -y libglib2.0-0

#Install the necessary packages 
RUN apt-get update && \     
apt-get install -y x11-apps  
# RUN sudo DEBIAN_FRONTEND=noninteractive apt install gedit -y
#Set the display environment variable 



