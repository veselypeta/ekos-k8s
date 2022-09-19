FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install software-properties-common
RUN apt-add-repository ppa:mutlaqja/ppa
RUN apt-get update
RUN apt-get install -y indi-full gsc

EXPOSE 7624
CMD [ "indiserver", "indi_simulator_ccd", "indi_simulator_telescope" ]