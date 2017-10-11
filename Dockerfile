FROM ubuntu

RUN apt-get update \
    && apt-get install -y texlive-full biber pandoc fonts-font-awesome \
    && apt-get clean
