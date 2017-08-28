FROM ubuntu:xenial
MAINTAINER Tom Butler

RUN apt-get update
# Python
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y python3-pip wget unzip
RUN pip3 install awscli boto3
# Ruby, and Bundler
RUN apt-get install -y ruby2.3 ruby2.3-dev
RUN gem install bundler
# Terraform
RUN wget https://releases.hashicorp.com/terraform/0.8.7/terraform_0.8.7_linux_amd64.zip
RUN unzip terraform_0.8.7_linux_amd64.zip
RUN mv terraform /usr/local/bin/terraform
