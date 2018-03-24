FROM ubuntu:latest

#Update OS and install needed packages
RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get -y update --no-install-recommends \
    && apt-get install -y software-properties-common \
    && apt-get install -y git tree vim tzdata \
    python build-essential libssl-dev libffi-dev python-pip python3-pip python-setuptools python-dev python3 

# Config timezone
RUN rm -f /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Phnom_Penh /etc/localtime

RUN pip install --upgrade pip \ 
    && pip3 install ansible==2.5.0 \
    && pip3 install cryptography netmiko napalm pyntc \
    && pip3 install --upgrade paramiko \
    && pip3 install yamllint

ADD ansible /etc/ansible/
