FROM python:2.7.18-slim-stretch

LABEL maintainer github@tools-utils.com

RUN apt update -y \
    && apt upgrade -y \
    && apt install -y build-essential \
    && apt-get install libxml2-dev libxslt-dev cython3 zlib1g-dev python-dev libpq-dev -y \
    && apt-get install libldap2-dev libsasl2-dev -y \
    && apt-get install python3-pypdf2 -y \
    && apt-get install python3-pip -y
RUN apt install vim -y \
    && apt install wget -y \
    && apt install git -y

WORKDIR /openupgrade

RUN mkdir /openupgrade/10.0
RUN mkdir /openupgrade/11.0
RUN mkdir /openupgrade/12.0
RUN mkdir /openupgrade/13.0

COPY openupgrade/10.0 /openupgrade/10.0
COPY openupgrade/11.0 /openupgrade/11.0
COPY openupgrade/12.0 /openupgrade/12.0
COPY openupgrade/13.0 /openupgrade/13.0

RUN pip install --upgrade pip

RUN pip install openupgradelib
RUN pip install -r /openupgrade/10.0/requirements.txt
