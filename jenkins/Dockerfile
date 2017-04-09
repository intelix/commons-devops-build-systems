FROM jenkinsci/jenkins:latest

USER root

RUN apt-get update -qq -y \
        && apt-get install -y --no-install-recommends \
                        apt-transport-https \
                        curl \
                        git \
                        ca-certificates \
                && apt-get clean \
                && rm -rf /var/lib/apt/lists/*


RUN echo "deb https://apt.dockerproject.org/repo debian-jessie main" | tee -a /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN apt-get update -qq -y && \
    apt-get install -y --no-install-recommends \
        docker-engine=1.11.2-0~jessie \
        ansible \
        python2.7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

