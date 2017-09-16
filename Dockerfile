FROM ubuntu:zesty

RUN apt-get update \
    && apt-get install -y texlive-full biber pandoc \
    && apt-get clean
