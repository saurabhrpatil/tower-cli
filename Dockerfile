# Latest version of centos
FROM centos:centos7
RUN yum update -y && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip && \
    pip install --upgrade pip && \
    pip install ansible-tower-cli && \
    yum clean all && rm -rf /var/cache/yum
