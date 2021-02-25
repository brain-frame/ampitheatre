FROM jupyter/datascience-notebook:python-3.8.6
ARG folder=granary
USER root
RUN useradd amanitore

RUN apt-get update && apt-get install libasound-dev

# TODO:Pin down version number
RUN git clone https://github.com/PortAudio/portaudio.git && cd portaudio && ./configure && make && make install


RUN apt-get -y install python3-pyaudio

RUN pip install \
	SpeechRecognition==3.8.1 \
	pyaudio==0.2.11


USER amanitore

WORKDIR /${folder}