FROM debian:jessie

RUN apt-get update \
    && apt-get install -y build-essential texlive-full pandoc \
    && apt-get clean
