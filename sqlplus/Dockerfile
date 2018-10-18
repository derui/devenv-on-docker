FROM amazonlinux:2018.03

COPY oracle-instantclient18.3-basic.x86_64.rpm /tmp/basic.rpm
COPY oracle-instantclient18.3-sqlplus.x86_64.rpm /tmp/sqlplus.rpm
COPY oracle-instantclient18.3-tools.x86_64.rpm /tmp/tools.rpm

RUN yum update -y && yum install -y libaio && rpm -ivh /tmp/basic.rpm && \
    rpm -ivh /tmp/sqlplus.rpm && \
    rpm -ivh /tmp/tools.rpm && \
    curl -Lo /tmp/epel.rpm https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm && \
    rpm -Uvh /tmp/epel.rpm && yum install -y rlwrap && \
    echo "/usr/lib/oracle/18.3/client64/lib" > /etc/ld.so.conf.d/oracle.conf && \
    localedef -i ja_JP -c -f UTF-8 ja_JP.UTF-8 && \
    ldconfig

ENV ORACLE_HOME=/work
ENV PATH=/usr/lib/oracle/18.3/client64/bin:$PATH
ENV LANG=ja_JP.UTF-8
ENV LC_ALL=ja_JP.UTF-8
ENV NLS_LANG=Japanese_Japan.UTF8

CMD ["bash"]