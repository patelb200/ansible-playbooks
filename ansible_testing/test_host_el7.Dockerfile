FROM centos:7 as builder

RUN yum -y update && \
    yum install -y python3 && \
    yum install -y python3-pip