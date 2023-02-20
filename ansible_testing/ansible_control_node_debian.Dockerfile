FROM debian:buster

ENV PATH="${PATH}:~/.local/bin"

RUN apt-get -y update && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    apt-get install -y nano && \
    apt-get install openssh-server

RUN useradd -rm -d /home/ansible -s /bin/bash -g root -G sudo -u 1001 ansible
USER ansible
WORKDIR /home/ansible

RUN  python3 -m pip install --user ansible
EXPOSE 22
ENTRYPOINT ["/bin/bash"]