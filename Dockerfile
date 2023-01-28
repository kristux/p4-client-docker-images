FROM ubuntu:bionic

RUN apt-get -y update; apt-get -y install curl
RUN apt-get install gnupg2 -y

RUN curl -fsSL http://package.perforce.com/perforce.pubkey | apt-key add -
RUN echo 'deb http://package.perforce.com/apt/ubuntu bionic release' > /etc/apt/sources.list.d/perforce.sources.list
RUN apt-get update -yq && apt-get install -yqq --no-install-recommends helix-cli

CMD bash
